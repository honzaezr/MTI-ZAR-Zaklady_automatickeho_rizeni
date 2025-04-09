clear;
close all;
clc;

t = 0:0.01:10;
syms s;

Fs = (1044*(2/10 *s + 1))/(25*s^3+145*s^2+1164*s+1044);    % předpis obrazového přenosu
Us = 200 * 1/s; % u(t) = 200 * 1(t)

Ys = Fs * Us;

yt = ilaplace(Ys);
pretty(yt)

yt_1 = 200 - (22760.*exp(-(12*t)/5).*(cos(6*t) + (4618.*sin(6*t))/2845))/949 - (167040.*exp(-t))/949;
s = tf('s');
F = (1044*(2/10 *s + 1))/(25*s^3+145*s^2+1164*s+1044) * 200;
yapr = step(F, t);

plot(t,yt_1, 'DisplayName', "Analytický průběh odezvy", "LineWidth", 5)
hold on;
plot(t,yapr, "r", 'DisplayName', "Skutečná teplota", "LineWidth", 2)
title("Porovnání průběhů")
legend;
grid on