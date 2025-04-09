clc;
clear;
close all;

T1 = [0.5 1 2 5 10];
K = [0.5 1 2];




for i = 1:5
    Fs = tf(1, [T1(i) 1]);
    step(Fs)
end

for j = 1:3
    Fs1(j) = tf(K, [2 3 1]);
end

% figure
% step(Fs1)
% figure
% step(Fs)



