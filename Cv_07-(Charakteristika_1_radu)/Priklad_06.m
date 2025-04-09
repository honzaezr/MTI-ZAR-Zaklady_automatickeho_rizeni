clear all;
close all;
clc;

Tsim = 25;

F1 = tf([2], [5 1]);
F2 = tf([-2], [5 1]);
F3 = tf([2], [-5 1]);
F4 = tf([2], [5 0]);

subplot(2,2,1)
step(F1,Tsim)
subplot(2,2,2)
step(F2,Tsim)
subplot(2,2,3)
step(F3,Tsim)
subplot(2,2,4)
step(F4,Tsim)