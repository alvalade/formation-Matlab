clear; clc; close all;

%% Polynome caracterise par les racines
% On nous donne les racines de polynome suivantes
poly_roots = [0.5 2 4.3];

% On peut deduire le polynome via la fonction poly
% Plus d'infos : >> help poly
P = poly(poly_roots);

% Pour l'evaluer on utilisera poylval
P_eval = polyval(P, -2);

%% Polynome caracteristique
% On veut le polynome caracteristique de cette matrice
A = [2 -1; 
       3  7];

% Le polynome caracteristique a pour racines les
% valeurs propres de la matrice A. On commence donc
% par les recuperer
% Plus d'infos : >> help eig
roots = eig(mat);

% On possede les racines d'un polynome, on passe par la
% fonction poly pour en deduire les coefficients
polychar = poly(roots);