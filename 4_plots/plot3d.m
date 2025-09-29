clear; clc; close all;

%% PARAMETRES
t = 0:pi/50:10*pi; % segment d'interet

%% AFFICHAGE
figure()
plot3(sin(t), cos(t), t);
grid on;
title("Spirale");
xlabel("sin(t)")
ylabel("cos(t)");
zlabel("t");