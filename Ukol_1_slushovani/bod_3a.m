t = 0:0.01:10;

s = tf('s');
F = (1044.*((7/10*s)+1))/((25*s^3+145*s^2+1164*s+1044)*200);
yapr = step(F, t);

subplot(2, 1, 1);
plot(t, yapr, 'r', 'DisplayName', 'skutečná teplota');
legend;

y = 200 - 66.*exp(-t) - 133.*exp(-2.4*t).*cos(6*t) - 64.593.*exp(-2.4*t).*sin(6*t);

subplot(2, 1, 2);
plot(t, y, 'b', 'DisplayName', 'y(t)');
hold on;

[y_max, i] = max(y);
t_max = t(i);

plot(t_max, y_max, 'ro', 'DisplayName', sprintf('Max=%.2f', y_max));
legend;

fprintf('Maximální hodnota y je %.2f při t = %.2f\n', y_max, t_max);
