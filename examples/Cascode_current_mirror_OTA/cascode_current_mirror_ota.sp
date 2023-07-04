.subckt cascode_current_mirror_ota id vinn vinp vbiasn vbiasp vdd vss
m25 voutp vbiasn net034 vss nmos w=27e-9 l=20e-9 nfin=5 nf=4
m24 vbiasnd vbiasn net033 vss nmos w=27e-9 l=20e-9 nfin=5 nf=4
m17 net16 vinn net24 vss nmos w=27e-9 l=20e-9 nfin=5 nf=6
m16 net24 id vss vss nmos w=27e-9 l=20e-9 nfin=5 nf=4
m15 net27 vinp net24 vss nmos w=27e-9 l=20e-9 nfin=5 nf=6
m14 id id vss vss nmos w=27e-9 l=20e-9 nfin=5 nf=4
m11 net033 vbiasnd vss vss nmos w=27e-9 l=20e-9 nfin=5 nf=6
m10 net034 vbiasnd vss vss nmos w=27e-9 l=20e-9 nfin=5 nf=6
m1nup vbiasn vbiasn net9b vss nmos w=270e-9 l=20e-9 nfin=5 nf=2
m1ndown net9b net9b vss vss nmos w=270e-9 l=20e-9 nfin=5 nf=2
m1pup net8b net8b vdd vdd pmos w=270e-9 l=20e-9 nfin=5 nf=2
m1pdown vbiasp vbiasp net8b net8b pmos w=270e-9 l=20e-9 nfin=5  nf=2
m27 net27 vbiasp net021 net021 pmos w=27e-9 l=20e-9 nfin=5 nf=12
m26 net16 vbiasp net015 net015 pmos w=27e-9 l=20e-9 nfin=5 nf=12
m23 voutp vbiasp net024 net024 pmos w=27e-9 l=20e-9 nfin=5 nf=24
m22 vbiasnd vbiasp net06 net06 pmos w=27e-9 l=20e-9 nfin=5 nf=24
m21 net015 net16 vdd vdd pmos w=27e-9 l=20e-9 nfin=5 nf=2
m20 net06 net16 vdd vdd pmos w=27e-9 l=20e-9 nfin=5 nf=2
m19 net021 net27 vdd vdd pmos w=27e-9 l=20e-9 nfin=5 nf=2
m18 net024 net27 vdd vdd pmos w=27e-9 l=20e-9 nfin=5 nf=2
.ends cascode_current_mirror_ota
