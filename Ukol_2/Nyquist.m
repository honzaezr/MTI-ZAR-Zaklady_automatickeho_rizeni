clear all;
close all;
clc;

H = tf(4,[5 1]);
nyquist(H)
grid on;