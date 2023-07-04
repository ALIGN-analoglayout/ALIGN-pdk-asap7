.subckt five_transistor_ota_stacked id vinp vinn vout vdd vss
m5 id id net5s vss nmos w=270e-9 l=20e-9 nfin=5 nf=2
m5s net5s id vss vss nmos w=270e-9 l=20e-9 nfin=5 nf=2
m4 net10 id net4s vss nmos w=270e-9 l=20e-9 nfin=5 nf=8
m4s net4s id vss vss nmos w=270e-9 l=20e-9 nfin=5 nf=8
m3 vout vinn net3s vss nmos w=270e-9 l=20e-9 nfin=10 nf=16
m3s net3s vinn net10 vss nmos w=270e-9 l=20e-9 nfin=10 nf=16
m0 net8 vinp net0s vss nmos w=270e-9 l=20e-9 nfin=10 nf=16
m0s net0s vinp net10 vss nmos w=270e-9 l=20e-9 nfin=10 nf=16
m2 vout net8 net2s vdd pmos w=270e-9 l=20e-9 nfin=10 nf=10
m2s net2s net8 vdd vdd pmos w=270e-9 l=20e-9 nfin=10 nf=10
m1 net8 net8 net1s vdd pmos w=270e-9 l=20e-9 nfin=10 nf=10
m1s net1s net8 vdd vdd pmos w=270e-9 l=20e-9 nfin=10 nf=10
.ends five_transistor_ota_stacked