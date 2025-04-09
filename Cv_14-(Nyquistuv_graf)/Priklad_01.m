clear all;
close all;
clc;


nyquist(tf(4,[1 6 8]))
[Re, Im] = nyquist(tf(4,[1 6 8]))    