clear; clc; close all;

% Pour generer des echantillons de maniere uniforme on va se servir de
% la fonction randu de matlab
% Plus d'infos : >> help rand
% /!\ La doc nous indique que rand(n) genere une matrice carree
% il faut donc specifier que l'on veut seulement un vecteur de 15
% echantillons en mettant deux coordonnees
random_samples = rand(1,15);

% Pour la moyenne et la variance, on a les fonctions mean et std de matlab
% on va se servir ici du fait que la variance est le carre de l'ecart-type
% Plus d'infos : >> help mean
%                >> help std
moyenne = mean(random_samples);
variance = std(random_samples).^2;

% Pour extraire le max/min d'un vecteur et sa position, on va se servir
% des deux valeurs de retour des fonctions max/min
% Plus d'infos : >> help max
%                >> help min

[valeur_min, position_min] = min(random_samples);
[valeur_max, position_max] = max(random_samples);