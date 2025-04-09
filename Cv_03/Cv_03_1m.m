%clear all;
close all;
clc;


K_values = -12:-5;
K1 = 5;

for i=1:8
    K = K_values(i);
    sim('Cv_03_1.slx',4);   
    plot(DataOut(:,1),DataOut(:,2));
    hold on;
end