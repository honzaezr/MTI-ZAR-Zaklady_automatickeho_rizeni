clc;
close all;
clear all;

x = linspace(0, 2*pi,9);
y = sin(x);

x1 = linspace(0, 2*pi, 101);
y1 = sin(x1);


K = 2;
a = -0.5;
w = 5;
tmax = 4*pi;


t = linspace(0,tmax,300);
y2 = K * exp(a*t).*sin(w*t);

y3 = 2*exp(a*t);
y4 = -y3;




% figure;
% plot(y);
% hold on;
% 
% figure;
% plot(y1);
% grid on;
% axis tight;
% title('Funkce sinus');
% xlabel('fi [rad]');
% ylabel('sin(fi)');
% legend('sin')
% 
% hold on;

figure;
plot(t,y2,t,y3,t,y4);
grid on;
axis tight;
title('Graf funkce "y = K * exp(a*t).*sin(w*t)"');
xlabel('t');
ylabel('y(t)');
legend('signál')