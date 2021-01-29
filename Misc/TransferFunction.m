%All the variable that may exist
syms s t u;
syms R R1 R2;
syms L L1 L2;
syms C C1 C2;
syms M M1 M2 M3 m m1 m2 m3;
syms J J1 J2 J3; 
syms K K1 K2 K3 k k1 k2 k3; 
syms fv fv1 fv2 fv3 fv4 b b1 b2;
syms I I1 I2 I3; 
syms V V1 V2; 
syms F X X1 X2 X3; 
syms T theta theta1 theta2 theta3; 


%solving multivariable equations using cramers rule


%electrical/mechanical/rotational system :- 2 variable 
%{
inEl2 = [I1; I2];
colEl1 = [M*s^2+b*s+K; -(b*s+K)]; %enter the coeffecient matrix
colEl2 = [-(b*s+K); M*s^2+b*s+K];
coEffEl = [colEl1 colEl2];
disp(coEffEl);
outEl = [F; 0];

i1 = det([outEl colEl2])/det(coEffEl);
i2 = det([colEl1 outEl])/det(coEffEl);
%}




%electrical system/mechanical/rotational system :- 3 variable 

%METHOD 1
inEl  = [I1; I2; I3];
colEl1 = [s^2+s; -s; 0]; %enter the coeffecient matrix
colEl2 = [-s; s+1; -1];
colEl3 = [0; -0.2; (s+1)/5];
coEffEl = [colEl1 colEl2 colEl3];  %enter the coeffecient matrix 
outEl = [10*T; 0; 0];

i1 = det([outEl colEl2 colEl3])/det(coEffEl);
i2 = det([colEl1 outEl colEl3])/det(coEffEl);
i3 = det([colEl1 colEl2 outEl])/det(coEffEl);

disp(i1);
disp(i2);
disp(i3);


%{
%METHOD 2 
inEl  = [I1; I2; I3];
coEffEl = [s^2+s, -s, 0; -s, s+1, -0.2; 0, -1, (s+1)/5];  %enter the coeffecient matrix 
outEl = [10*T; 0; 0];
%}

%{
tfEl21 = i1/inEl2;
tfEl22 = i2/inEl2; 


tfEl31 = i1/inEl3;
tfEl32 = i2/inEl3;
tfEl33 = i3/inEl3;
%}





