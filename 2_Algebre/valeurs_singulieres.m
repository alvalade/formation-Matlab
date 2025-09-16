clear; clc; close all;

% SVD
A = [2 0 -1 2;
    3 1 6 5 ;
    4 2 1 8];

% La decomposition en valeurs singulieres se fait
% via la fonction svd de matlab.
% plus d'infos : >> help svd
vs = svd(A);

% On veut comparer les valeurs singulieres donnees
% aux valeurs propres de la matrice A x transpose(A)
eg = eig(A*A.');

% La verification de l'egalite peut se verifier en regardant dans le
% workspace
val_sing_carr = vs.^2;

