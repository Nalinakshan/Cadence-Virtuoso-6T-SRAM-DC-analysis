*
*
*
*                       LINUX           Tue Jun 30 15:27:31 2026
*
*
*
*  PROGRAM  advgen
*
*  Name           : advgen - Quantus - (64-bit)
*  Version        : 21.2.2-p045
*  Build Date     : Fri Sep 23 10:27:37 PDT 2022
*
*  HSPICE LIBRARY
*
*
*

*
.SUBCKT SramSchematic BLB VDD GND WL BL
*
*
*  caps2d version: 10
*
*
*       TRANSISTOR CARDS
*
*
MNM2	BLB#1	WL#2	Qb#9	GND	g45n1svt	L=4.5e-08
+ W=2.4e-07
+ AD=3.84e-14	AS=3.84e-14	PD=8e-07	PS=8e-07
+ fw=2.4e-07 sa=1.6e-07 sb=1.6e-07 sca=3.52678 scb=0.000111658 scc=3.66286e-09
MNM3	Q#8	WL#3	BL#1	GND	g45n1svt	L=4.5e-08
+ W=2.4e-07
+ AD=3.84e-14	AS=3.84e-14	PD=8e-07	PS=8e-07
+ fw=2.4e-07 sa=1.6e-07 sb=1.6e-07 sca=3.52678 scb=0.000111658 scc=3.66286e-09
MNM1	Q#11	Qb#4	GND#3	GND	g45n1svt	L=4.5e-08
+ W=2.4e-07
+ AD=3.84e-14	AS=3.84e-14	PD=8e-07	PS=8e-07
+ fw=2.4e-07 sa=1.6e-07 sb=1.6e-07 sca=3.52678 scb=0.000111658 scc=3.66286e-09
MNM0	Qb#10	Q#4	GND#5	GND	g45n1svt	L=4.5e-08
+ W=2.4e-07
+ AD=3.84e-14	AS=3.84e-14	PD=8e-07	PS=8e-07
+ fw=2.4e-07 sa=1.6e-07 sb=1.6e-07 sca=3.52678 scb=0.000111658 scc=3.66286e-09
MPM0	Q#12	Qb	VDD#2	VDD	g45p1svt	L=4.5e-08
+ W=2.4e-07
+ AD=3.84e-14	AS=3.84e-14	PD=8e-07	PS=8e-07
+ fw=2.4e-07 sa=1.6e-07 sb=1.6e-07 sca=92.6565 scb=0.0728613 scc=0.0106001
MPM1	Qb#11	Q	VDD#4	VDD	g45p1svt	L=4.5e-08
+ W=2.4e-07
+ AD=3.84e-14	AS=3.84e-14	PD=8e-07	PS=8e-07
+ fw=2.4e-07 sa=1.6e-07 sb=1.6e-07 sca=92.6565 scb=0.0728613 scc=0.0106001
*
*
*       RESISTOR AND CAP/DIODE CARDS
*
Rl1	WL#1	WL#2	71.133774	$poly_conn	$W=3.9e-08
Rl3	Q	Q#3	154.845779	$poly_conn	$W=3.9e-08
Rl4	Q#3	Q#4	224.326004	$poly_conn	$W=3.9e-08
Rl7	Qb	Qb#3	217.079803	$poly_conn	$W=3.9e-08
Rl8	Qb#3	Qb#4	162.091965	$poly_conn	$W=3.9e-08
Rl10	WL#3	WL#4	73.056839	$poly_conn	$W=3.9e-08
Rk1	BLB#1	BLB	37.624638	$metal1_conn	$W=2.4e-07
Rk2	Qb#3	Qb#7	45.279915	$metal1_conn	$W=1.25e-07
Rk3	Qb#7	Qb#8	0.125606	$metal1_conn	$W=2.4e-07
Rk4	Qb#8	Qb#9	38.445084	$metal1_conn	$W=1.2e-07
Rk5	Qb#7	Qb#10	37.587074	$metal1_conn	$W=2.4e-07
Rk6	Qb#8	Qb#11	31.051651	$metal1_conn	$W=2.4e-07
Rk8	VDD#3	VDD	0.283708	$metal1_conn	$W=1.1e-07
Rk9	VDD	VDD#5	0.289276	$metal1_conn	$W=1.1e-07
Rk11	VDD#2	VDD#3	31.000000	$metal1_conn	$W=9e-08
Rk12	VDD#4	VDD#5	31.000000	$metal1_conn	$W=9e-08
Rk15	GND#4	GND	0.120084	$metal1_conn	$W=2.3e-07
Rk16	GND	GND#6	0.117349	$metal1_conn	$W=2.3e-07
Rk21	GND#3	GND#4	37.500000	$metal1_conn	$W=9e-08
Rk22	GND#5	GND#6	37.500000	$metal1_conn	$W=9e-08
Rk23	Q#8	Q#9	38.473190	$metal1_conn	$W=1.2e-07
Rk24	Q#9	Q#3	45.315842	$metal1_conn	$W=1.25e-07
Rk25	Q#9	Q#11	37.698891	$metal1_conn	$W=2.4e-07
Rk26	Q#9	Q#12	31.061138	$metal1_conn	$W=2.4e-07
Rk27	WL#4	WL	46.625095	$metal1_conn	$W=1.13e-07
Rk28	WL	WL#1	46.534576	$metal1_conn	$W=1.115e-07
Rk29	BL	BL#1	37.631195	$metal1_conn	$W=2.4e-07
*
*       CAPACITOR CARDS
*
*
C1	BLB	GND	cmodel	4.38154e-17
C2	VDD	GND	cmodel	1.1991e-16
C3	WL	GND	cmodel	3.13925e-16
C4	BL	GND	cmodel	3.97802e-17
C5	Q	GND	cmodel	2.58928e-16
C6	Qb	GND	cmodel	2.80104e-16
C7	WL#3	GND	cmodel	4.90135e-17
C8	Qb#4	GND	cmodel	7.02753e-17
C9	Q#4	GND	cmodel	9.19868e-17
C10	WL#2	GND	cmodel	8.43965e-17
C11	WL#4	GND	cmodel	1.78619e-16
C12	Qb#3	GND	cmodel	1.43297e-16
C13	Q#3	GND	cmodel	1.49029e-16
C14	WL#1	GND	cmodel	1.72945e-16
C15	VDD#2	GND	cmodel	7.60785e-17
C16	Q#12	GND	cmodel	3.80271e-17
C17	VDD#4	GND	cmodel	7.51489e-17
C18	Qb#11	GND	cmodel	3.80252e-17
C19	BL#1	GND	cmodel	4.48653e-17
C20	Q#8	GND	cmodel	1.71952e-16
C21	Q#11	GND	cmodel	6.61434e-17
C22	Qb#10	GND	cmodel	4.63986e-17
C23	Qb#9	GND	cmodel	1.77882e-16
C24	BLB#1	GND	cmodel	4.04065e-17
C25	Qb#7	GND	cmodel	4.56454e-17
C26	Qb#8	GND	cmodel	1.26139e-16
C27	VDD#3	GND	cmodel	8.78161e-17
C28	VDD#5	GND	cmodel	8.81131e-17
C29	Q#9	GND	cmodel	1.5234e-16
*
*
.ENDS SramSchematic
*
