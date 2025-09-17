clear; clc; close all;


% Generation du vecteur complexe
A = [0.22 + 0.5 * 1i 0.4 - 0.2 * 1i];

% Pour extraire les differentes infomations de A, on va utiliser
% respectivement les fonctions real, imag, abs et angle
% Plus d'infos : >> help nom_de_la_fonction
real_A  = real(A);
imag_A  = imag(A);
mod_A   = abs(A);
phase_A = angle(A);


% Ici un petit bout de code pour verifier la fonction farg_A et s'assurer
% qu'elle se comporte comme demande
ma_phase_A_radians = farg_A(A, "radians");

test = [1 1i -1 -1i]; % resp. [0 90 180 270] degres
ma_phase_A_degres = farg_A(test, "degres");