% Definice funkce y(t)
y = @(t)200 - (22760.*exp(-(12*t)/5).*(cos(6*t) + (4618.*sin(6*t))/2845))/949 - (167040.*exp(-t))/949;

% Funkce pro minimalizaci (záporná hodnota y(t))
negative_y = @(t) -y(t);

% Hledání maxima v intervalu (0 až 10 minut)
[time_of_max_temp, neg_max_temp] = fminbnd(negative_y, 0, 10);

% Převrácení znaménka zpět pro získání skutečné maximální teploty
max_temperature = -neg_max_temp;

% Výpis výsledků
fprintf('Maximální dosažená teplota je %.2f °C\n', max_temperature);
fprintf('Čas dosažení maximální teploty je %.2f minut\n', time_of_max_temp);