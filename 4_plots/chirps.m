clear; clc; close all;

%% Parametres
t = 0:0.1:5;          % Pas de temps

%% Generation du signal
chirp = fchirp(t);

%% Affichage
figure()              % Ouvre la figure
plot(t, chirp);       % affiche le signal voulu en ordonnees et notre axe
                      % des temps en abscisse
grid on;              % met une grille en fond de figure
title("sin(t^2)");    % titre de la figure
xlabel("temps");      % axe des abscisses
ylabel("chirp");      % axe des ordonnees

%% Affichage sans ligne
figure()                  % Ouvre la figure
plot(t, chirp, ...        % affiche chirp sur l'axe des temps voulu
    "Marker", "o", ...    % avec un marqueur rond
    "LineStyle", "none"); % et sans ligne entre les marqueurs
grid on;                  % met une grille en fond de figure
title("sin(t^2)");        % titre de la figure
xlabel("temps");          % axe des abscisses
ylabel("chirp");          % axe des ordonnees

save("chirp.mat", "chirp");

