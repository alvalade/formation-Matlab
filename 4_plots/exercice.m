clear; clc; close all;

%% PARAMETRES

coeffs = [1 0 -30 30];           % coefficients de p(x)
x = -8:0.1:8;                    % segment d'interet

%% APPLICATION

% Evaluation du polynome par polyval
valeurs = polyval(coeffs, x);

% calcul des racines du polynome
% la fonction sort est ajoutee afin
% d'avoir les racines dans l'ordre croissant
% pour plus tard.
% Plus d'infos: >> help roots
%               >> help sort
racines = sort(roots(coeffs));

% calcul de l'aire sous la courbe
% la fonction integral remplace quad dans votre
% sujet, qui n'est plus conseillee.
% le fait de rajouter un @ devant le nom de la
% fonction mypoly cree un objet un peu special
% qui permet a la fonction integral de savoir quelle
% fonction appeler pour calculer le polynome
% Plus d'infos: >> help integral
q = integral(@mypoly, racines(1), racines(2));
%% AFFICHAGE

figure()
plot(x, valeurs);           % affichage des valeurs du polynome sur le
                            % segment souhaite
grid on;                    % affiche la grille
xlabel("x");                % axe des abscisses
ylabel("p(x)");             % axe des ordonnees
hold on;                    % indique a MATLAB de continuer a dessiner
                            % sur la meme figure
plot(racines, zeros(size(racines)), ...
    "LineStyle", "none", ...
    "Marker", "x");

tt = racines(1):0.1:racines(2);
vtt =mypoly(tt);

fill(tt, vtt, "red")