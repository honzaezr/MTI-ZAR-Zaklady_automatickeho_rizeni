clear all;
close all;
clc;

Tsim = 90;

T1 = 1;
T2 = 5;
T3 = 10;

Fs1 = tf([2], [T1 1])
Fs2 = tf([2], [T2 1])
Fs3 = tf([2], [T3 1])


[ys1, ts1] = step(Fs1, Tsim);
[ys2, ts2] = step(Fs2, Tsim);
[ys3, ts3] = step(Fs3, Tsim);

plot(ts1, ys1)
hold on;
plot(ts2, ys2)
hold on;
plot(ts3, ys3)
hold on;
grid on;



hT1 = 2*(1 - exp(-(1/T1)));
hT2 = 2*(1 - exp(-(1/T2)));
hT3 = 2*(1 - exp(-(1/T3)));



%find příkaz


