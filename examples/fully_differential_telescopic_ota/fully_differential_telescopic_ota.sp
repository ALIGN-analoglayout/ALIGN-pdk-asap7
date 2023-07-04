.subckt fully_differential_telescopic_ota vbiasnd vinn vinp voutn voutp id vbiasn vbiasp
m9 voutn vbiasn net8 vss nmos w=270e-9 l=20e-9 nfin=5
nf=6
m8 voutp vbiasn net014 vss nmos w=270e-9 l=20e-9 nfin=5 nf=6
m5 id id vss vss nmos w=270e-9 l=20e-9 nfin=5 nf=2
m4 net10 vbiasnd vss vss nmos w=270e-9 l=20e-9 nfin=5 nf=10
m3 net014 vinn net10 vss nmos w=270e-9 l=20e-9 nfin=5 nf=14
m0 net8 vinp net10 vss nmos w=270e-9 l=20e-9 nfin=5 nf=14
m7 voutp vbiasp net012 net012 pmos w=270e-9 l=20e-9 nfin=5 nf=4
m6 voutn vbiasp net06 net06 pmos w=270e-9 l=20e-9 nfin=5 nf=4
m2 net012 vbiasp1 vdd vdd pmos w=270e-9 l=20e-9 nfin=5 nf=2
m1 net06 vbiasp1 vdd vdd pmos w=270e-9 l=20e-9 nfin=5 nf=2
.ends fully_differential_telescopic_ota