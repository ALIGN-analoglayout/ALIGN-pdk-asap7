.subckt telescopic_ota id vdd vinn vinp vss vout
m9 vpgate vbiasn net8 vss nmos w=270e-9 l=20e-9 nfin=5 nf=8
m8 vout vbiasn net014 vss nmos w=270e-9 l=20e-9 nfin=5 nf=8
m5 id id vss vss nmos w=270e-9 l=20e-9 nfin=5 nf=2
m4 net10 id vss vss nmos w=270e-9 l=20e-9 nfin=5 nf=6
m3 net014 vinn net10 vss nmos w=270e-9 l=20e-9 nfin=5 nf=14
m0 net8 vinp net10 vss nmos w=270e-9 l=20e-9 nfin=5 nf=14
m7 vout vbiasp net012 vdd pmos w=270e-9 l=20e-9 nfin=5 nf=12
m6 vpgate vbiasp net06 vdd pmos w=270e-9 l=20e-9 nfin=5 nf=12
m2 net012 vpgate vdd vdd pmos w=270e-9 l=20e-9 nfin=5 nf=4
m1 net06 vpgate vdd vdd pmos w=270e-9 l=20e-9 nfin=5 nf=4
m10 vbiasn vbiasn net5 vss nmos w=270e-9 l=20e-9 nfin=5 nf=2
m11 net5 vbiasn net10 vss nmos w=270e-9 l=20e-9 nfin=5 nf=2
m15 net9 d1 vss vss nmos w=270e-9 l=20e-9 nfin=5 nf=2
m16 net9 net9 vdd vdd pmos w=270e-9 l=20e-9 nfin=5 nf=2
m17 vbiasn net9 vdd vdd pmos w=270e-9 l=20e-9 nfin=5 nf=2
m12 vbiasp d1 vss vss nmos w=270e-9 l=20e-9 nfin=5 nf=2
m13 vbiasp vbiasp net7 vdd pmos w=270e-9 l=20e-9 nfin=5 nf=2
m14 net7 vbiasp vdd vdd pmos w=270e-9 l=20e-9 nfin=5 nf=2
.ends telescopic_ota
