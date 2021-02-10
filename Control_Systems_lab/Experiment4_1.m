clc
clear

%%%% CASE 1: Under Damped Second Order System, G(s)=10/(s2+2s+10) %%%%
num1 = [10];
den1 = [1 2 10];

G = tf(num1, den1);
[Wn, Z, P] = damp(G);
Wn = Wn(1);
Z = Z(1);
t = 0: 0.1: 20;
figure(1);
step(num1, den1, t)
title('Under Damped Second Order System Response for Step Input');
grid on;

disp("Transient+SteadyState parameters for underdamped second order system");
disp(stepinfo(G));

%%%% CASE 2: Un-damped Second Order System, G(s) = 10/s^2+10 %%%%
num2 = [10];
den2 = [1 0 10];
figure(2);
step(num2, den2, t)
title('Undamped Second Order System Response for Step Input');
grid on; 

G2 = tf(num2, den2);
disp("Transient+SteadyState parameters for un-damped second order system");
disp(stepinfo(G2));

%%%% CASE 3: Critically Damped Second System G(s)=10/(s2+7.32s+10) %%%%
num3 = [10];
den3 = [1 7.32 10];
figure(3);
step(num3, den3, t)
title('Critically Damped Second Order System Response for Step Input');
grid on;

G3 = tf(num3, den3);
disp("Transient+SteadyState parameters for critically damped second order system");
disp(stepinfo(G3));

%%%% CASE 4: Over Damped Second Order System G(s)=10/(s2+30s+10) %%%%
num4 = [10];
den4 = [1 30 10];
figure(4);
step(num4, den4, t)
title('Over Damped Second Order System Response for Step Input');
grid on; 

G4 = tf(num4, den4);
disp("Transient+SteadyState parameters for overdamped second order system");
disp(stepinfo(G4));