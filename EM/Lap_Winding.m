S = 18; 
P = 6;
Ycs = S/P;
U = 2;
Yb = U*Ycs + 1;
Yc_progressive = 1;
Yc_retrogressive = -1;
Yf_progressive = Yb + 2;
Yf_retrogressive = Yb - 2;
A = P;
Ia = 25;
Ic = Ia/A;
for i = 1:2:2*(2*S - Yb)
    disp([i, i+Yb])
end 
