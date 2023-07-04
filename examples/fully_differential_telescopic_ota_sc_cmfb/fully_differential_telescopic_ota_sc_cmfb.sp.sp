.fully_differential_telescopic_ota vbiasnd vbiasn vbiasp1 vbiasp2 vinn vinp voutn voutp id vdd vss
m9 voutn vbiasn net8 vss nmos w=270e-9 l=20e-9 nfin=5 nf=6
m8 voutp vbiasn net014 vss nmos w=270e-9 l=20e-9 nfin=5 nf=6
m5 id id vss vss nmos w=270e-9 l=20e-9 nfin=5 nf=2
m4 net10 vbiasnd vss vss nmos w=270e-9 l=20e-9 nfin=5 nf=10
m3 net014 vinn net10 vss nmos w=270e-9 l=20e-9 nfin=5 nf=14
m0 net8 vinp net10 vss nmos w=270e-9 l=20e-9 nfin=5 nf=14
m7 voutp vbiasp1 net012 net012 pmos w=270e-9 l=20e-9 nfin=5 nf=4
m6 voutn vbiasp1 net06 net06 pmos w=270e-9 l=20e-9 nfin=5 nf=4
m2 net012 vbiasp2 vdd vdd pmos w=270e-9 l=20e-9 nfin=5 nf=2
m1 net06 vbiasp2 vdd vdd pmos w=270e-9 l=20e-9 nfin=5 nf=2
.ends fully_differential_telescopic_ota


.subckt inv a y vdd vss
m0 y a vss vss nmos w=270e-9 l=20e-9 nfin=3 nf=2
m1 y a vdd vdd pmos w=270-9 l=20e-9 nfin=3 nf=2
.ends inv

.subckt inv_5x a y vdd vss
m0 y a vss vss nmos w=270e-9 l=20e-9 nfin=3 nf=10
m1 y a vdd vdd pmos w=270e-9 l=20e-9 nfin=3 nf=10
.ends inv_5x

.subckt transmission_gate a y vdd vss
m0 y vdd a vss nmos w=81e-9 l=20e-9 nfin=3 nf=2
m1 y vss a a pmos w=81e-9 l=20e-9 nfin=3 nf=2
.ends transmission_gate

.subckt nand_gate a b out vdd vss
m2 out a net22 vss nmos w=54e-9 l=20e-9 nfin=3 nf=4
m3 net22 b vss vss nmos w=54e-9 l=20e-9 nfin=3 nf=4
m0 out a vdd vdd pmos w=27e-9 l=20e-9 nfin=3 nf=2
m1 out b vdd vdd pmos w=27e-9 l=20e-9 nfin=3 nf=2
.ends nand_gate

.subckt non_overlapping_clock_generator clk d_vdd d_gnd phi1 phi2
xi6 clk net9 d_vdd d_gnd inv
xi6_tg clk net9_tg d_dd d_gnd transmission_gate
xi5 net12 phi2 d_vdd d_gnd inv_5x
xi4 net17 net12 d_vdd d_gnd inv
xi3 net8 phi1 d_vdd d_gnd inv_5x
xi2 net15 net8 d_vdd d_gnd inv
xi1 net16 net15 d_vdd d_gnd inv
xi0 net18 net17 d_vdd d_gnd inv
xi8 net9 net8 net18 d_vdd d_gnd nand_gate
xi7 net12 net9_tg net16 d_vdd d_gnd nand_gate
.ends non_overlapping_clock_generator


.subckt sc_cmfb va vb vbias vcm vg phi1 phi2
c3 net10 vg 20e-15
c2 vg net8 20e-15
m4 vbias phi2 vg vss nmos w=27e-9 l=20e-9 nfin=5 nf=10
m3 vcm phi2 net10 vss nmos w=27e-9 l=20e-9 nfin=5 nf=10
m2 vb phi1 net10 vss nmos w=27e-9 l=20e-9 nfin=5 nf=10
m1 net8 phi2 vcm vss nmos w=27e-9 l=20e-9 nfin=5 nf=10
m0 net8 phi1 va vss nmos w=27e-9 l=20e-9 nfin=5 nf=10
.ends sc_cmfb


.subckt fully_differential_telescopic_ota_sc_cmfb vbiasn vbiasp1 vbiasp2 vinn vinp voutn voutp id vdd vss vcm clk
xi0 vg vbiasn vbiasp1 vbiasp2 vinn vinp voutn voutp id vdd vss fully_differential_telescopic_ota
xi3 clk vdd vss phi1 phi2 non_overlapping_clock_generator
xi13 voutn voutp id vcm vg phi1 phi2 sc_cmfb
.ends fully_differential_telescopic_ota_sc_cmfb