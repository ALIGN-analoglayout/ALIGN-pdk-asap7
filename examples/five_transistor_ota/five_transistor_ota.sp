.subckt five transistor ota ibias vdd vss vout vinp vinn
m5 ibias ibias vss vss nmos w=270e-9 l=20e-9 nfin=5 nf=2
m4 net10 ibias vss vss nmos w=270e-9 l=20e-9 nfin=5 nf=8
m3 vout vinn net10 vss nmos w=270e-9 l=20e-9 nfin=2 nf=32
m0 net8 vinp net10 vss nmos w=270e-9 l=20e-9 nfin=2 nf=32
m2 vout net8 vdd vdd pmos w=270e-9 l=20e-9 nfin=5 nf=20
m1 net8 net8 vdd vdd pmos w=270e-9 l=20e-9 nfin=5 nf=20
.ends five_transistor_ota