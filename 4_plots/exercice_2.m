clear; clc; close all;

%% PARAMETRES
x = 0:pi/256:pi;               % segment d'interet
y = @(x) sin(x) + sin(3.2*x);  % fonction d'interet
order = 4;                     % ordre de l'approximation

%% POLYNOME

coeffs = polyfit(x,y(x),order);
vals = polyval(coeffs, x);


%% AFFICHAGE
figure()
plot(x,y(x));
hold on;
plot(x, vals);