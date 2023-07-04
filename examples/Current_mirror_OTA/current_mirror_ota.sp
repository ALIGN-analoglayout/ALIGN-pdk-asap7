.subckt current_mirror_ota id vinn vinp vdd vss voutp
m17 net16 vinn net24 vss nmos w=27e-9 l=20e-9 nfin=4 nf=8
m16 net24 id vss vss nmos w=27e-9 l=20e-9 nfin=4 nf=2
m15 net27 vinp net24 vss nmos w=27e-9 l=20e-9 nfin=4 nf=8
m14 id id vss vss nmos w=27e-9 l=20e-9 nfin=4 nf=2
m11 vbiasnd vbiasnd vss vss nmos w=27e-9 l=20e-9 nfin=4 nf=6
m10 voutp vbiasnd vss vss nmos w=27e-9 l=20e-9 nfin=4 nf=6
m21 net16 net16 vdd vdd pmos w=27e-9 l=20e-9 nfin=4 nf=16
m20 m20stack net16 vdd vdd pmos w=27e-9 l=20e-9 nfin=4 nf=60
m20s vbiasnd net16 m20stack vdd pmos w=27e-9 l=20e-9 nfin=4 nf=60
m19 net27 net27 vdd vdd pmos w=27e-9 l=20e-9 nfin=4 nf=16
m18 m18stack net27 vdd vdd pmos w=27e-9 l=20e-9 nfin=4 nf=60
m18s voutp net27 m18stack vdd pmos w=27e-9 l=20e-9 nfin=4 nf=60
.ends current_mirror_ota
