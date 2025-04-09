clear all;
close all;
clc;

K = 2; T = 10;
K1 = 1; K5 = 5;
T1 = 1; T100 = 100;

F = tf(K,[T, 1]);
F1 = tf(K1,[T1, 1]);
F2 = tf(K5,[T100, 1]);

FK = tf(K,[T, 1]);
F1K = tf(K1,[T, 1]);
F2K = tf(K5,[T, 1]);

FT = tf(K,[T, 1]);
F1T = tf(K,[T1, 1]);
F2T = tf(K,[T100, 1]);


nyquist(F)
hold on;
nyquist(F1)
hold on;
nyquist(F2)

figure
nyquist(FK)
hold on;
nyquist(F1K)
hold on;
nyquist(F2K)

figure
nyquist(FT)
hold on;
nyquist(F1T)
hold on;
nyquist(F2T)