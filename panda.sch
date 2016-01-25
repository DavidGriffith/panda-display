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
LIBS:w_logic
LIBS:panda-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Panda Display USB"
Date "2015-11-14"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATMEGA328-P U1
U 1 1 5646CE55
P 1750 5200
F 0 "U1" H 1000 6450 40  0000 L BNN
F 1 "ATMEGA8" H 2150 3800 40  0000 L BNN
F 2 "Housings_DIP:DIP-28_W7.62mm" H 1750 5200 30  0001 C CIN
F 3 "" H 1750 5200 60  0000 C CNN
	1    1750 5200
	1    0    0    -1  
$EndComp
$Comp
L MAX7219 U2
U 1 1 5646D0D1
P 5350 6700
F 0 "U2" H 5350 7750 60  0000 C CNN
F 1 "MAX7219" H 5500 7650 60  0000 C CNN
F 2 "Housings_DIP:DIP-24_W7.62mm" H 5250 6700 60  0001 C CNN
F 3 "" H 5250 6700 60  0000 C CNN
	1    5350 6700
	1    0    0    -1  
$EndComp
$Comp
L DOT-BAR BAR1
U 1 1 5646E142
P 7000 5825
F 0 "BAR1" H 7000 5975 40  0000 C CNN
F 1 "DOT-BAR" H 7000 5675 40  0001 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 7000 5825 60  0001 C CNN
F 3 "" H 7000 5825 60  0000 C CNN
	1    7000 5825
	0    1    1    0   
$EndComp
$Comp
L DOT-BAR BAR1
U 2 1 5646E729
P 7400 5825
F 0 "BAR1" H 7400 5975 40  0000 C CNN
F 1 "DOT-BAR" H 7400 5675 40  0001 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 7400 5825 60  0001 C CNN
F 3 "" H 7400 5825 60  0000 C CNN
	2    7400 5825
	0    1    1    0   
$EndComp
$Comp
L DOT-BAR BAR1
U 3 1 5646E76F
P 7800 5825
F 0 "BAR1" H 7800 5975 40  0000 C CNN
F 1 "DOT-BAR" H 7800 5675 40  0001 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 7800 5825 60  0001 C CNN
F 3 "" H 7800 5825 60  0000 C CNN
	3    7800 5825
	0    1    1    0   
$EndComp
$Comp
L DOT-BAR BAR1
U 4 1 5646E942
P 8200 5825
F 0 "BAR1" H 8200 5975 40  0000 C CNN
F 1 "DOT-BAR" H 8200 5675 40  0001 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 8200 5825 60  0001 C CNN
F 3 "" H 8200 5825 60  0000 C CNN
	4    8200 5825
	0    1    1    0   
$EndComp
$Comp
L DOT-BAR BAR1
U 5 1 5646E974
P 8600 5825
F 0 "BAR1" H 8600 5975 40  0000 C CNN
F 1 "DOT-BAR" H 8600 5675 40  0001 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 8600 5825 60  0001 C CNN
F 3 "" H 8600 5825 60  0000 C CNN
	5    8600 5825
	0    1    1    0   
$EndComp
$Comp
L DOT-BAR BAR1
U 6 1 5646E9A5
P 9000 5825
F 0 "BAR1" H 9000 5975 40  0000 C CNN
F 1 "DOT-BAR" H 9000 5675 40  0001 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 9000 5825 60  0001 C CNN
F 3 "" H 9000 5825 60  0000 C CNN
	6    9000 5825
	0    1    1    0   
$EndComp
$Comp
L DOT-BAR BAR1
U 7 1 5646E9D9
P 9400 5825
F 0 "BAR1" H 9400 5975 40  0000 C CNN
F 1 "DOT-BAR" H 9400 5675 40  0001 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 9400 5825 60  0001 C CNN
F 3 "" H 9400 5825 60  0000 C CNN
	7    9400 5825
	0    1    1    0   
$EndComp
$Comp
L DOT-BAR BAR1
U 8 1 5646F736
P 9800 5825
F 0 "BAR1" H 9800 5975 40  0000 C CNN
F 1 "DOT-BAR" H 9800 5675 40  0001 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 9800 5825 60  0001 C CNN
F 3 "" H 9800 5825 60  0000 C CNN
	8    9800 5825
	0    1    1    0   
$EndComp
$Comp
L DOT-BAR BAR1
U 9 1 5646F908
P 7000 4925
F 0 "BAR1" H 7000 5075 40  0000 C CNN
F 1 "DOT-BAR" H 7000 4775 40  0001 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 7000 4925 60  0001 C CNN
F 3 "" H 7000 4925 60  0000 C CNN
	9    7000 4925
	0    1    1    0   
$EndComp
$Comp
L DOT-BAR BAR1
U 10 1 5646F974
P 7400 4925
F 0 "BAR1" H 7400 5075 40  0000 C CNN
F 1 "DOT-BAR" H 7400 4775 40  0001 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 7400 4925 60  0001 C CNN
F 3 "" H 7400 4925 60  0000 C CNN
	10   7400 4925
	0    1    1    0   
$EndComp
$Comp
L DOT-BAR BAR2
U 1 1 5646FF90
P 7800 4925
F 0 "BAR2" H 7800 5075 40  0000 C CNN
F 1 "DOT-BAR" H 7800 4775 40  0001 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 7800 4925 60  0001 C CNN
F 3 "" H 7800 4925 60  0000 C CNN
	1    7800 4925
	0    1    1    0   
$EndComp
$Comp
L DOT-BAR BAR2
U 2 1 56470041
P 8200 4925
F 0 "BAR2" H 8200 5075 40  0000 C CNN
F 1 "DOT-BAR" H 8200 4775 40  0001 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 8200 4925 60  0001 C CNN
F 3 "" H 8200 4925 60  0000 C CNN
	2    8200 4925
	0    1    1    0   
$EndComp
$Comp
L DOT-BAR BAR2
U 3 1 5647008B
P 8600 4925
F 0 "BAR2" H 8600 5075 40  0000 C CNN
F 1 "DOT-BAR" H 8600 4775 40  0001 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 8600 4925 60  0001 C CNN
F 3 "" H 8600 4925 60  0000 C CNN
	3    8600 4925
	0    1    1    0   
$EndComp
$Comp
L DOT-BAR BAR2
U 4 1 564700D4
P 9000 4925
F 0 "BAR2" H 9000 5075 40  0000 C CNN
F 1 "DOT-BAR" H 9000 4775 40  0001 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 9000 4925 60  0001 C CNN
F 3 "" H 9000 4925 60  0000 C CNN
	4    9000 4925
	0    1    1    0   
$EndComp
$Comp
L DOT-BAR BAR2
U 5 1 5647139A
P 9400 4925
F 0 "BAR2" H 9400 5075 40  0000 C CNN
F 1 "DOT-BAR" H 9400 4775 40  0001 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 9400 4925 60  0001 C CNN
F 3 "" H 9400 4925 60  0000 C CNN
	5    9400 4925
	0    1    1    0   
$EndComp
$Comp
L DOT-BAR BAR2
U 6 1 56472681
P 9800 4925
F 0 "BAR2" H 9800 5075 40  0000 C CNN
F 1 "DOT-BAR" H 9800 4775 40  0001 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 9800 4925 60  0001 C CNN
F 3 "" H 9800 4925 60  0000 C CNN
	6    9800 4925
	0    1    1    0   
$EndComp
$Comp
L DOT-BAR BAR2
U 7 1 564726D7
P 7000 4025
F 0 "BAR2" H 7000 4175 40  0000 C CNN
F 1 "DOT-BAR" H 7000 3875 40  0001 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 7000 4025 60  0001 C CNN
F 3 "" H 7000 4025 60  0000 C CNN
	7    7000 4025
	0    1    1    0   
$EndComp
$Comp
L DOT-BAR BAR2
U 8 1 56472738
P 7400 4025
F 0 "BAR2" H 7400 4175 40  0000 C CNN
F 1 "DOT-BAR" H 7400 3875 40  0001 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 7400 4025 60  0001 C CNN
F 3 "" H 7400 4025 60  0000 C CNN
	8    7400 4025
	0    1    1    0   
$EndComp
$Comp
L DOT-BAR BAR2
U 9 1 56472792
P 7800 4025
F 0 "BAR2" H 7800 4175 40  0000 C CNN
F 1 "DOT-BAR" H 7800 3875 40  0001 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 7800 4025 60  0001 C CNN
F 3 "" H 7800 4025 60  0000 C CNN
	9    7800 4025
	0    1    1    0   
$EndComp
$Comp
L DOT-BAR BAR2
U 10 1 564727EF
P 8200 4025
F 0 "BAR2" H 8200 4175 40  0000 C CNN
F 1 "DOT-BAR" H 8200 3875 40  0001 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 8200 4025 60  0001 C CNN
F 3 "" H 8200 4025 60  0000 C CNN
	10   8200 4025
	0    1    1    0   
$EndComp
$Comp
L DOT-BAR BAR3
U 1 1 5647284D
P 8600 4025
F 0 "BAR3" H 8600 4175 40  0000 C CNN
F 1 "DOT-BAR" H 8600 3875 40  0001 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 8600 4025 60  0001 C CNN
F 3 "" H 8600 4025 60  0000 C CNN
	1    8600 4025
	0    1    1    0   
$EndComp
$Comp
L DOT-BAR BAR3
U 2 1 56474713
P 9000 4025
F 0 "BAR3" H 9000 4175 40  0000 C CNN
F 1 "DOT-BAR" H 9000 3875 40  0001 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 9000 4025 60  0001 C CNN
F 3 "" H 9000 4025 60  0000 C CNN
	2    9000 4025
	0    1    1    0   
$EndComp
$Comp
L DOT-BAR BAR3
U 3 1 5647478F
P 9400 4025
F 0 "BAR3" H 9400 4175 40  0000 C CNN
F 1 "DOT-BAR" H 9400 3875 40  0001 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 9400 4025 60  0001 C CNN
F 3 "" H 9400 4025 60  0000 C CNN
	3    9400 4025
	0    1    1    0   
$EndComp
$Comp
L DOT-BAR BAR3
U 4 1 564747FA
P 9800 4025
F 0 "BAR3" H 9800 4175 40  0000 C CNN
F 1 "DOT-BAR" H 9800 3875 40  0001 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 9800 4025 60  0001 C CNN
F 3 "" H 9800 4025 60  0000 C CNN
	4    9800 4025
	0    1    1    0   
$EndComp
$Comp
L DOT-BAR BAR3
U 5 1 56474864
P 7000 3125
F 0 "BAR3" H 7000 3275 40  0000 C CNN
F 1 "DOT-BAR" H 7000 2975 40  0001 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 7000 3125 60  0001 C CNN
F 3 "" H 7000 3125 60  0000 C CNN
	5    7000 3125
	0    1    1    0   
$EndComp
$Comp
L DOT-BAR BAR3
U 6 1 564748D1
P 7400 3125
F 0 "BAR3" H 7400 3275 40  0000 C CNN
F 1 "DOT-BAR" H 7400 2975 40  0001 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 7400 3125 60  0001 C CNN
F 3 "" H 7400 3125 60  0000 C CNN
	6    7400 3125
	0    1    1    0   
$EndComp
$Comp
L DOT-BAR BAR3
U 7 1 56474945
P 7800 3125
F 0 "BAR3" H 7800 3275 40  0000 C CNN
F 1 "DOT-BAR" H 7800 2975 40  0001 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 7800 3125 60  0001 C CNN
F 3 "" H 7800 3125 60  0000 C CNN
	7    7800 3125
	0    1    1    0   
$EndComp
$Comp
L DOT-BAR BAR3
U 8 1 564749B8
P 8200 3125
F 0 "BAR3" H 8200 3275 40  0000 C CNN
F 1 "DOT-BAR" H 8200 2975 40  0001 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 8200 3125 60  0001 C CNN
F 3 "" H 8200 3125 60  0000 C CNN
	8    8200 3125
	0    1    1    0   
$EndComp
Wire Wire Line
	6800 6225 9800 6225
Connection ~ 9000 6225
Connection ~ 8600 6225
Connection ~ 8200 6225
Connection ~ 7800 6225
Connection ~ 7400 6225
Wire Wire Line
	6800 5325 9800 5325
Connection ~ 9000 5325
Connection ~ 8600 5325
Connection ~ 8200 5325
Connection ~ 7800 5325
Connection ~ 7400 5325
Wire Wire Line
	9600 5425 9400 5425
Wire Wire Line
	9600 1175 9600 5425
Wire Wire Line
	9600 4525 9400 4525
Wire Wire Line
	9200 5425 9000 5425
Wire Wire Line
	9200 1175 9200 5425
Wire Wire Line
	9200 4525 9000 4525
Wire Wire Line
	8800 5425 8600 5425
Wire Wire Line
	8800 1175 8800 5425
Wire Wire Line
	8800 4525 8600 4525
Wire Wire Line
	8400 5425 8200 5425
Wire Wire Line
	8400 1175 8400 5425
Wire Wire Line
	8400 4525 8200 4525
Wire Wire Line
	8000 5425 7800 5425
Wire Wire Line
	8000 1175 8000 5425
Wire Wire Line
	8000 4525 7800 4525
Wire Wire Line
	7600 5425 7400 5425
Wire Wire Line
	7600 1175 7600 5425
Wire Wire Line
	7600 4525 7400 4525
Wire Wire Line
	7200 5425 7000 5425
Wire Wire Line
	7200 1175 7200 5425
Wire Wire Line
	7200 4525 7000 4525
Wire Wire Line
	6800 4425 9800 4425
Connection ~ 9000 4425
Connection ~ 8600 4425
Connection ~ 8200 4425
Connection ~ 7800 4425
Connection ~ 7400 4425
Wire Wire Line
	9400 3625 9600 3625
Connection ~ 9600 4525
Wire Wire Line
	9000 3625 9200 3625
Connection ~ 9200 4525
Wire Wire Line
	8600 3625 8800 3625
Connection ~ 8800 4525
Wire Wire Line
	8200 3625 8400 3625
Connection ~ 8400 4525
Wire Wire Line
	7800 3625 8000 3625
Connection ~ 8000 4525
Wire Wire Line
	7400 3625 7600 3625
Connection ~ 7600 4525
Wire Wire Line
	7000 3625 7200 3625
Connection ~ 7200 4525
Wire Wire Line
	6850 3525 9800 3525
Wire Wire Line
	7000 2725 7200 2725
Connection ~ 7200 3625
Wire Wire Line
	7400 2725 7600 2725
Connection ~ 7600 3625
Wire Wire Line
	7800 2725 8000 2725
Connection ~ 8000 3625
Wire Wire Line
	8200 2725 8400 2725
Connection ~ 8400 3625
Wire Wire Line
	8600 2725 8800 2725
Connection ~ 8800 3625
Wire Wire Line
	9000 2725 9200 2725
Connection ~ 9200 3625
Wire Wire Line
	9400 2725 9600 2725
Connection ~ 9600 3625
Connection ~ 9000 3525
Connection ~ 8600 3525
Connection ~ 8200 3525
Connection ~ 7800 3525
Connection ~ 7400 3525
$Comp
L DOT-BAR BAR3
U 9 1 56479F94
P 8600 3125
F 0 "BAR3" H 8600 3275 40  0000 C CNN
F 1 "DOT-BAR" H 8600 2975 40  0001 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 8600 3125 60  0001 C CNN
F 3 "" H 8600 3125 60  0000 C CNN
	9    8600 3125
	0    1    1    0   
$EndComp
$Comp
L DOT-BAR BAR3
U 10 1 5647A025
P 9000 3125
F 0 "BAR3" H 9000 3275 40  0000 C CNN
F 1 "DOT-BAR" H 9000 2975 40  0001 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 9000 3125 60  0001 C CNN
F 3 "" H 9000 3125 60  0000 C CNN
	10   9000 3125
	0    1    1    0   
$EndComp
$Comp
L DOT-BAR BAR4
U 1 1 5647A0A1
P 9400 3125
F 0 "BAR4" H 9400 3275 40  0000 C CNN
F 1 "DOT-BAR" H 9400 2975 40  0001 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 9400 3125 60  0001 C CNN
F 3 "" H 9400 3125 60  0000 C CNN
	1    9400 3125
	0    1    1    0   
$EndComp
$Comp
L DOT-BAR BAR4
U 2 1 5647A120
P 9800 3125
F 0 "BAR4" H 9800 3275 40  0000 C CNN
F 1 "DOT-BAR" H 9800 2975 40  0001 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 9800 3125 60  0001 C CNN
F 3 "" H 9800 3125 60  0000 C CNN
	2    9800 3125
	0    1    1    0   
$EndComp
$Comp
L DOT-BAR BAR4
U 3 1 5647A1A2
P 7000 2225
F 0 "BAR4" H 7000 2375 40  0000 C CNN
F 1 "DOT-BAR" H 7000 2075 40  0001 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 7000 2225 60  0001 C CNN
F 3 "" H 7000 2225 60  0000 C CNN
	3    7000 2225
	0    1    1    0   
$EndComp
$Comp
L DOT-BAR BAR4
U 4 1 5647A22B
P 7400 2225
F 0 "BAR4" H 7400 2375 40  0000 C CNN
F 1 "DOT-BAR" H 7400 2075 40  0001 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 7400 2225 60  0001 C CNN
F 3 "" H 7400 2225 60  0000 C CNN
	4    7400 2225
	0    1    1    0   
$EndComp
$Comp
L DOT-BAR BAR4
U 5 1 5647A2B3
P 7800 2225
F 0 "BAR4" H 7800 2375 40  0000 C CNN
F 1 "DOT-BAR" H 7800 2075 40  0001 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 7800 2225 60  0001 C CNN
F 3 "" H 7800 2225 60  0000 C CNN
	5    7800 2225
	0    1    1    0   
$EndComp
Wire Wire Line
	6850 2625 9800 2625
Wire Wire Line
	7000 1825 7200 1825
Connection ~ 7200 2725
Wire Wire Line
	7400 1825 7600 1825
Connection ~ 7600 2725
Wire Wire Line
	7800 1825 8000 1825
Connection ~ 8000 2725
Wire Wire Line
	8200 1825 8400 1825
Connection ~ 8400 2725
Wire Wire Line
	8600 1825 8800 1825
Connection ~ 8800 2725
Wire Wire Line
	9000 1825 9200 1825
Connection ~ 9200 2725
Wire Wire Line
	9400 1825 9600 1825
Connection ~ 9600 2725
Connection ~ 9000 2625
Connection ~ 8600 2625
Connection ~ 8200 2625
Connection ~ 7800 2625
Connection ~ 7400 2625
Connection ~ 9400 5325
Connection ~ 9400 6225
Wire Wire Line
	10000 5425 9800 5425
Wire Wire Line
	10000 1175 10000 5425
Wire Wire Line
	10000 4525 9800 4525
Wire Wire Line
	9800 3625 10000 3625
Connection ~ 10000 4525
Connection ~ 9400 4425
Connection ~ 9400 3525
Wire Wire Line
	9800 2725 10000 2725
Connection ~ 10000 3625
$Comp
L DOT-BAR BAR4
U 6 1 5648B071
P 8200 2225
F 0 "BAR4" H 8200 2375 40  0000 C CNN
F 1 "DOT-BAR" H 8200 2075 40  0001 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 8200 2225 60  0001 C CNN
F 3 "" H 8200 2225 60  0000 C CNN
	6    8200 2225
	0    1    1    0   
$EndComp
$Comp
L DOT-BAR BAR4
U 7 1 5648B0FF
P 8600 2225
F 0 "BAR4" H 8600 2375 40  0000 C CNN
F 1 "DOT-BAR" H 8600 2075 40  0001 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 8600 2225 60  0001 C CNN
F 3 "" H 8600 2225 60  0000 C CNN
	7    8600 2225
	0    1    1    0   
$EndComp
$Comp
L DOT-BAR BAR4
U 8 1 5648B1DE
P 9000 2225
F 0 "BAR4" H 9000 2375 40  0000 C CNN
F 1 "DOT-BAR" H 9000 2075 40  0001 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 9000 2225 60  0001 C CNN
F 3 "" H 9000 2225 60  0000 C CNN
	8    9000 2225
	0    1    1    0   
$EndComp
$Comp
L DOT-BAR BAR4
U 9 1 5648B274
P 9400 2225
F 0 "BAR4" H 9400 2375 40  0000 C CNN
F 1 "DOT-BAR" H 9400 2075 40  0001 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 9400 2225 60  0001 C CNN
F 3 "" H 9400 2225 60  0000 C CNN
	9    9400 2225
	0    1    1    0   
$EndComp
$Comp
L DOT-BAR BAR4
U 10 1 5648B30B
P 9800 2225
F 0 "BAR4" H 9800 2375 40  0000 C CNN
F 1 "DOT-BAR" H 9800 2075 40  0001 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 9800 2225 60  0001 C CNN
F 3 "" H 9800 2225 60  0000 C CNN
	10   9800 2225
	0    1    1    0   
$EndComp
Wire Wire Line
	9800 1825 10000 1825
Connection ~ 10000 2725
Connection ~ 9400 2625
$Comp
L LED LED1
U 1 1 5648C6F5
P 7000 1475
F 0 "LED1" H 7000 1575 50  0000 C CNN
F 1 "LED" H 7000 1375 50  0001 C CNN
F 2 "MyLEDs:LED-5MM" H 7000 1475 60  0001 C CNN
F 3 "" H 7000 1475 60  0000 C CNN
	1    7000 1475
	0    -1   -1   0   
$EndComp
$Comp
L LED LED2
U 1 1 5648CFA9
P 7400 1475
F 0 "LED2" H 7400 1575 50  0000 C CNN
F 1 "LED" H 7400 1375 50  0001 C CNN
F 2 "MyLEDs:LED-5MM" H 7400 1475 60  0001 C CNN
F 3 "" H 7400 1475 60  0000 C CNN
	1    7400 1475
	0    -1   -1   0   
$EndComp
$Comp
L LED LED3
U 1 1 5648D049
P 7800 1475
F 0 "LED3" H 7800 1575 50  0000 C CNN
F 1 "LED" H 7800 1375 50  0001 C CNN
F 2 "MyLEDs:LED-5MM" H 7800 1475 60  0001 C CNN
F 3 "" H 7800 1475 60  0000 C CNN
	1    7800 1475
	0    -1   -1   0   
$EndComp
$Comp
L LED LED4
U 1 1 5648D0EC
P 8200 1475
F 0 "LED4" H 8200 1575 50  0000 C CNN
F 1 "LED" H 8200 1375 50  0001 C CNN
F 2 "MyLEDs:LED-5MM" H 8200 1475 60  0001 C CNN
F 3 "" H 8200 1475 60  0000 C CNN
	1    8200 1475
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6850 1675 8200 1675
Wire Wire Line
	7000 1275 7200 1275
Connection ~ 7200 1825
Wire Wire Line
	7400 1275 7600 1275
Connection ~ 7600 1825
Wire Wire Line
	7800 1275 8000 1275
Connection ~ 8000 1825
Wire Wire Line
	8200 1275 8400 1275
Connection ~ 8400 1825
Connection ~ 7800 1675
Connection ~ 7400 1675
Text GLabel 6800 6225 0    60   Input ~ 0
ROW1
Text GLabel 6800 5325 0    60   Input ~ 0
ROW2
Connection ~ 7000 5325
Connection ~ 7000 6225
Text GLabel 6800 4425 0    60   Input ~ 0
ROW3
Connection ~ 7000 4425
Text GLabel 6850 3525 0    60   Input ~ 0
ROW4
Connection ~ 7000 3525
Text GLabel 6850 2625 0    60   Input ~ 0
ROW5
Connection ~ 7000 2625
Text GLabel 6850 1675 0    60   Input ~ 0
ROW6
Connection ~ 7000 1675
Text GLabel 7200 1175 0    60   Input ~ 0
COL1
Connection ~ 7200 1275
Text GLabel 7600 1175 0    60   Input ~ 0
COL2
Connection ~ 7600 1275
Text GLabel 8000 1175 0    60   Input ~ 0
COL3
Text GLabel 8400 1175 0    60   Input ~ 0
COL4
Connection ~ 8000 1275
Connection ~ 8400 1275
Text GLabel 8800 1175 0    60   Input ~ 0
COL5
Text GLabel 9200 1175 0    60   Input ~ 0
COL6
Text GLabel 9600 1175 0    60   Input ~ 0
COL7
Text GLabel 10000 1175 0    60   Input ~ 0
COL8
Connection ~ 8800 1825
Connection ~ 9200 1825
Connection ~ 9600 1825
Connection ~ 10000 1825
Text GLabel 5900 7100 2    60   Output ~ 0
ROW1
Text GLabel 5900 7200 2    60   Output ~ 0
ROW2
Text GLabel 5900 7000 2    60   Output ~ 0
ROW3
Text GLabel 5900 6900 2    60   Output ~ 0
ROW4
Text GLabel 5900 7300 2    60   Output ~ 0
ROW5
Text GLabel 5900 6800 2    60   Output ~ 0
ROW6
Wire Wire Line
	5750 6800 5900 6800
Wire Wire Line
	5900 6900 5750 6900
Wire Wire Line
	5750 7000 5900 7000
Wire Wire Line
	5900 7100 5750 7100
Wire Wire Line
	5750 7200 5900 7200
Wire Wire Line
	5900 7300 5750 7300
Text GLabel 5900 6000 2    60   Output ~ 0
COL8
Wire Wire Line
	5900 6600 5750 6600
Text GLabel 5900 6400 2    60   Output ~ 0
COL7
Wire Wire Line
	5900 6500 5750 6500
Text GLabel 5900 6600 2    60   Output ~ 0
COL6
Wire Wire Line
	5750 6400 5900 6400
Text GLabel 5900 6200 2    60   Output ~ 0
COL5
Wire Wire Line
	5900 6300 5750 6300
Text GLabel 5900 6100 2    60   Output ~ 0
COL4
Wire Wire Line
	5900 6200 5750 6200
Text GLabel 5900 6500 2    60   Output ~ 0
COL3
Wire Wire Line
	5750 6100 5900 6100
Text GLabel 5900 6300 2    60   Output ~ 0
COL2
Wire Wire Line
	5750 6000 5900 6000
Text GLabel 5900 5900 2    60   Output ~ 0
COL1
Wire Wire Line
	5750 5900 5900 5900
$Comp
L ZENER D1
U 1 1 564A8ADA
P 3250 6100
F 0 "D1" V 3250 6200 50  0000 C CNN
F 1 "1N747" H 3600 6100 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-35_SOD27_Horizontal_RM10" H 3250 6100 60  0001 C CNN
F 3 "" H 3250 6100 60  0000 C CNN
F 4 "3.6V" V 3800 6100 60  0000 C CNN "Voltage"
	1    3250 6100
	0    1    1    0   
$EndComp
$Comp
L CONN_01X04 J1
U 1 1 564A9ED0
P 4200 5850
F 0 "J1" H 4200 6100 50  0000 C CNN
F 1 "USB" V 4300 5850 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04" H 4200 5850 60  0001 C CNN
F 3 "" H 4200 5850 60  0000 C CNN
F 4 "5V+" H 4350 6000 60  0000 C CNN "Pin1"
F 5 "D-" H 4325 5900 60  0000 C CNN "Pin2"
F 6 "D+" H 4325 5800 60  0000 C CNN "Pin3"
F 7 "GND" H 4350 5700 60  0000 C CNN "Pin4"
	1    4200 5850
	1    0    0    -1  
$EndComp
$Comp
L ZENER D2
U 1 1 564ABD9A
P 3475 6100
F 0 "D2" V 3475 6200 50  0000 C CNN
F 1 "1N747" H 3825 6100 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-35_SOD27_Horizontal_RM10" H 3475 6100 60  0001 C CNN
F 3 "" H 3475 6100 60  0000 C CNN
F 4 "3.6V" V 4025 6125 60  0000 C CNN "Voltage"
	1    3475 6100
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 6300 4000 6300
Wire Wire Line
	4000 6300 4000 6000
Connection ~ 3475 6300
Wire Wire Line
	3150 5900 4000 5900
Wire Wire Line
	3150 5800 4000 5800
$Comp
L R R3
U 1 1 564AC1D1
P 3000 5900
F 0 "R3" V 3100 5900 50  0000 C CNN
F 1 "68R" V 3000 5900 50  0000 C CNN
F 2 "My_Resistors_ThroughHole:Resistor_Horizontal_RM7.62mm" V 2930 5900 30  0001 C CNN
F 3 "" H 3000 5900 30  0000 C CNN
	1    3000 5900
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 5800 3250 5900
$Comp
L R R2
U 1 1 564AD8DE
P 3000 5800
F 0 "R2" V 2925 5800 50  0000 C CNN
F 1 "68R" V 3000 5800 50  0000 C CNN
F 2 "My_Resistors_ThroughHole:Resistor_Horizontal_RM7.62mm" V 2930 5800 30  0001 C CNN
F 3 "" H 3000 5800 30  0000 C CNN
	1    3000 5800
	0    1    1    0   
$EndComp
Connection ~ 3250 6300
$Comp
L GND #PWR01
U 1 1 564B070E
P 3050 6300
F 0 "#PWR01" H 3050 6050 50  0001 C CNN
F 1 "GND" H 3050 6150 50  0000 C CNN
F 2 "" H 3050 6300 60  0000 C CNN
F 3 "" H 3050 6300 60  0000 C CNN
	1    3050 6300
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR02
U 1 1 564B60A8
P 4000 5625
F 0 "#PWR02" H 4000 5475 50  0001 C CNN
F 1 "VCC" H 4000 5775 50  0000 C CNN
F 2 "" H 4000 5625 60  0000 C CNN
F 3 "" H 4000 5625 60  0000 C CNN
	1    4000 5625
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X03 J2
U 1 1 564BFAB6
P 5050 4600
F 0 "J2" H 5050 4800 50  0000 C CNN
F 1 "ICSP" H 5050 4400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03" H 5050 3400 60  0001 C CNN
F 3 "" H 5050 3400 60  0000 C CNN
	1    5050 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4700 4800 4700
Text Label 4550 4700 0    60   ~ 0
RESET
Wire Wire Line
	2750 4400 5550 4400
Wire Wire Line
	5550 4400 5550 4600
Wire Wire Line
	5550 4600 5300 4600
Text Label 5300 4600 0    60   ~ 0
MOSI
$Comp
L GND #PWR03
U 1 1 564C1227
P 5350 4750
F 0 "#PWR03" H 5350 4500 50  0001 C CNN
F 1 "GND" H 5350 4600 50  0000 C CNN
F 2 "" H 5350 4750 60  0000 C CNN
F 3 "" H 5350 4750 60  0000 C CNN
	1    5350 4750
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR04
U 1 1 564C12A5
P 5350 4350
F 0 "#PWR04" H 5350 4200 50  0001 C CNN
F 1 "VCC" H 5350 4500 50  0000 C CNN
F 2 "" H 5350 4350 60  0000 C CNN
F 3 "" H 5350 4350 60  0000 C CNN
	1    5350 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 4500 5350 4500
Wire Wire Line
	5350 4500 5350 4350
Wire Wire Line
	5300 4700 5350 4700
Wire Wire Line
	5350 4700 5350 4750
Wire Wire Line
	4800 4600 2750 4600
Wire Wire Line
	2750 4500 4800 4500
Text Label 4550 4600 0    60   ~ 0
SCK
Text Label 4550 4500 0    60   ~ 0
MISO
$Comp
L VCC #PWR05
U 1 1 564C4722
P 800 4050
F 0 "#PWR05" H 800 3900 50  0001 C CNN
F 1 "VCC" H 800 4200 50  0000 C CNN
F 2 "" H 800 4050 60  0000 C CNN
F 3 "" H 800 4050 60  0000 C CNN
	1    800  4050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 564C52CE
P 800 6450
F 0 "#PWR06" H 800 6200 50  0001 C CNN
F 1 "GND" H 800 6300 50  0000 C CNN
F 2 "" H 800 6450 60  0000 C CNN
F 3 "" H 800 6450 60  0000 C CNN
	1    800  6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  6300 800  6300
Wire Wire Line
	800  6300 800  6450
Wire Wire Line
	800  6400 850  6400
Connection ~ 800  6400
Wire Wire Line
	850  4100 800  4100
Wire Wire Line
	800  4050 800  4400
Wire Wire Line
	800  4400 850  4400
Connection ~ 800  4100
NoConn ~ 850  4700
$Comp
L GND #PWR07
U 1 1 564C9CB7
P 5250 7750
F 0 "#PWR07" H 5250 7500 50  0001 C CNN
F 1 "GND" H 5250 7600 50  0000 C CNN
F 2 "" H 5250 7750 60  0000 C CNN
F 3 "" H 5250 7750 60  0000 C CNN
	1    5250 7750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 7700 5300 7700
Wire Wire Line
	5250 7750 5250 7700
Connection ~ 5250 7700
NoConn ~ 5750 7400
$Comp
L VCC #PWR08
U 1 1 564CAE31
P 5250 5450
F 0 "#PWR08" H 5250 5300 50  0001 C CNN
F 1 "VCC" H 5250 5600 50  0000 C CNN
F 2 "" H 5250 5450 60  0000 C CNN
F 3 "" H 5250 5450 60  0000 C CNN
	1    5250 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 5450 5250 5700
$Comp
L R R5
U 1 1 564CCE0E
P 5100 5600
F 0 "R5" V 5200 5600 50  0000 C CNN
F 1 "10K" V 5100 5600 50  0000 C CNN
F 2 "My_Resistors_ThroughHole:Resistor_Horizontal_RM7.62mm" V 5030 5600 30  0001 C CNN
F 3 "" H 5100 5600 30  0000 C CNN
	1    5100 5600
	0    -1   -1   0   
$EndComp
Connection ~ 5250 5600
Wire Wire Line
	4950 5950 4950 5600
NoConn ~ 5750 7500
Wire Wire Line
	4700 6750 4950 6750
Wire Wire Line
	4700 5050 4700 7000
Wire Wire Line
	4650 6850 4950 6850
Wire Wire Line
	4650 5150 4650 6850
$Comp
L R R4
U 1 1 564D834E
P 4700 7150
F 0 "R4" V 4800 7150 50  0000 C CNN
F 1 "10K" V 4700 7150 50  0000 C CNN
F 2 "My_Resistors_ThroughHole:Resistor_Horizontal_RM7.62mm" V 4630 7150 30  0001 C CNN
F 3 "" H 4700 7150 30  0000 C CNN
	1    4700 7150
	1    0    0    -1  
$EndComp
Connection ~ 4700 6750
$Comp
L GND #PWR09
U 1 1 564D8CE2
P 4700 7425
F 0 "#PWR09" H 4700 7175 50  0001 C CNN
F 1 "GND" H 4700 7275 50  0000 C CNN
F 2 "" H 4700 7425 60  0000 C CNN
F 3 "" H 4700 7425 60  0000 C CNN
	1    4700 7425
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 7425 4700 7300
$Comp
L Crystal_Small Y1
U 1 1 564DA4E6
P 3150 4750
F 0 "Y1" V 3150 4650 50  0000 C CNN
F 1 "16MHz" V 3300 4750 50  0000 C CNN
F 2 "Crystals:Crystal_HC49-U_Vertical" H 3150 4750 60  0001 C CNN
F 3 "" H 3150 4750 60  0000 C CNN
	1    3150 4750
	0    1    1    0   
$EndComp
$Comp
L C_Small C4
U 1 1 564DA8CB
P 3350 4650
F 0 "C4" V 3350 4750 50  0000 L CNN
F 1 "22pF" V 3400 4850 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L4_W2.5_P2.5" H 3350 4650 60  0001 C CNN
F 3 "" H 3350 4650 60  0000 C CNN
	1    3350 4650
	0    1    1    0   
$EndComp
$Comp
L C_Small C5
U 1 1 564DAA7E
P 3350 4850
F 0 "C5" V 3350 4950 50  0000 L CNN
F 1 "22pF" V 3425 4875 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L4_W2.5_P2.5" H 3350 4850 60  0001 C CNN
F 3 "" H 3350 4850 60  0000 C CNN
	1    3350 4850
	0    1    1    0   
$EndComp
$Comp
L GND #PWR010
U 1 1 564DAB44
P 3650 4750
F 0 "#PWR010" H 3650 4500 50  0001 C CNN
F 1 "GND" H 3650 4600 50  0000 C CNN
F 2 "" H 3650 4750 60  0000 C CNN
F 3 "" H 3650 4750 60  0000 C CNN
	1    3650 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 4650 3250 4650
Wire Wire Line
	2750 4700 3050 4700
Wire Wire Line
	3050 4850 3250 4850
Connection ~ 3150 4850
Connection ~ 3150 4650
Wire Wire Line
	3450 4650 3450 4850
Wire Wire Line
	3450 4750 3650 4750
Connection ~ 3450 4750
Wire Wire Line
	3050 4700 3050 4650
Wire Wire Line
	3050 4850 3050 4800
Wire Wire Line
	3050 4800 2750 4800
Wire Wire Line
	2750 4950 4750 4950
Wire Wire Line
	4750 4950 4750 6550
Wire Wire Line
	4750 6550 4950 6550
Wire Wire Line
	4700 5050 2750 5050
Wire Wire Line
	4650 5150 2750 5150
Wire Wire Line
	2850 5800 2750 5800
Wire Wire Line
	2750 5900 2850 5900
Connection ~ 3250 5800
Connection ~ 3475 5900
$Comp
L R R1
U 1 1 5650796C
P 3850 5700
F 0 "R1" V 3850 5900 50  0000 C CNN
F 1 "1K5" V 3850 5700 50  0000 C CNN
F 2 "My_Resistors_ThroughHole:Resistor_Horizontal_RM7.62mm" V 3780 5700 30  0001 C CNN
F 3 "" H 3850 5700 30  0000 C CNN
	1    3850 5700
	0    -1   -1   0   
$EndComp
Connection ~ 3700 5800
Wire Wire Line
	3025 5550 2750 5550
$Comp
L VCC #PWR011
U 1 1 5651069A
P 2150 7025
F 0 "#PWR011" H 2150 6875 50  0001 C CNN
F 1 "VCC" H 2150 7175 50  0000 C CNN
F 2 "" H 2150 7025 60  0000 C CNN
F 3 "" H 2150 7025 60  0000 C CNN
	1    2150 7025
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 56510724
P 2125 7400
F 0 "#PWR012" H 2125 7150 50  0001 C CNN
F 1 "GND" H 2125 7250 50  0000 C CNN
F 2 "" H 2125 7400 60  0000 C CNN
F 3 "" H 2125 7400 60  0000 C CNN
	1    2125 7400
	1    0    0    -1  
$EndComp
$Comp
L C_Small C2
U 1 1 56510AC6
P 1850 7225
F 0 "C2" H 1800 7375 50  0000 L CNN
F 1 "0.1uF" H 1775 7050 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L4_W2.5_P2.5" H 1850 7225 60  0001 C CNN
F 3 "" H 1850 7225 60  0000 C CNN
	1    1850 7225
	1    0    0    -1  
$EndComp
$Comp
L CP1_Small C1
U 1 1 56510C65
P 1650 7225
F 0 "C1" H 1600 7375 50  0000 L CNN
F 1 "10uF" H 1450 7150 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D5_L6_P2.5" H 1650 7225 60  0001 C CNN
F 3 "" H 1650 7225 60  0000 C CNN
	1    1650 7225
	1    0    0    -1  
$EndComp
$Comp
L C_Small C3
U 1 1 565126CE
P 2050 7225
F 0 "C3" H 2000 7375 50  0000 L CNN
F 1 "0.1uF" H 2075 7150 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L4_W2.5_P2.5" H 2050 7225 60  0001 C CNN
F 3 "" H 2050 7225 60  0000 C CNN
	1    2050 7225
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 7325 2125 7325
Connection ~ 1850 7325
Wire Wire Line
	1650 7125 2150 7125
Connection ~ 1850 7125
Wire Wire Line
	2150 7125 2150 7025
Connection ~ 2050 7125
Wire Wire Line
	2125 7325 2125 7400
Connection ~ 2050 7325
Wire Wire Line
	4000 5625 4000 5700
Connection ~ 4000 5700
Text Label 2775 4950 0    60   ~ 0
DIN
Text Label 2775 5050 0    60   ~ 0
LOAD
Text Label 2775 5150 0    60   ~ 0
CLK
Text Label 3925 5800 0    60   ~ 0
D-
Text Label 3925 5900 0    60   ~ 0
D+
Wire Wire Line
	3800 4700 3800 5425
Wire Wire Line
	3800 5425 3025 5425
Wire Wire Line
	3025 5425 3025 5550
NoConn ~ 4950 6650
Wire Wire Line
	3700 5800 3700 5700
$EndSCHEMATC
