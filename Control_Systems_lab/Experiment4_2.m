clc
clear

G = tf([10],[1 2 10]);

step(G);
stepinfo(G)

[Wn, zeta] = damp(G);
Wn = Wn(1);
zeta = zeta(1);

overshoot = 100*exp((-pi*zeta)/((1-zeta^2)^(1/2)))
peaktime = pi/(Wn*((1-zeta^2)^(1/2)))


