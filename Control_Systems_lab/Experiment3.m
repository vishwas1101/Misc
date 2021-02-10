clc;
clear;

sys = tf([5], [0.05, 1]);
step(sys, 'g')
stepinfo(sys)