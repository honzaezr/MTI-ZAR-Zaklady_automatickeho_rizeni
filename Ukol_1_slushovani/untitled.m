% Definice přenosové funkce
x = 3; % Dosadíme vaše číslo z úkolu (x=3)
numerator = [1044*(x/10), 1044]; % Čitatel: 1044*(x/10)*s + 1044
denominator = [25, 145, 1164, 1044]; % Jmenovatel: 25*s^3 + 145*s^2 + 1164*s + 1044

% Vytvoření přenosové funkce v Laplaceově tvaru
G = tf(numerator, denominator);

% Rozklad na parciální zlomky
[r, p, k] = residue(numerator, denominator);

% Výpis výsledků
fprintf('Konstanty parciálního rozkladu:\n');
for i = 1:length(r)
    fprintf('Residuum %d: %.4f + %.4fi\n', i, real(r(i)), imag(r(i)));
    fprintf('Pól %d: %.4f + %.4fi\n', i, real(p(i)), imag(p(i)));
end

% Souhrn konstant A, B, C, D
fprintf('\nKonstanty:\n');
fprintf('A = %.4f\n', r(1));
fprintf('B = %.4f\n', r(2));
fprintf('C = %.4f\n', r(3));
fprintf('D = %.4f\n', r(4));
