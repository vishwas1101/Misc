num = [80 400];
den = [1 50 0 0];
sys = tf(num,den);
rlocus(sys);
pole(sys)
zero(sys)