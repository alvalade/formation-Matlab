function [phase] = farg_A(A, type)
%farg_A calcule la phase des elements complexes d'une matrice A
%
% angle = farg_A(A, "radians") donne la phase des elements complexes de A
% en radians
% angle = farg_A(A, "degres") donne la phase des elements complexes de A en
% degres

% Gestion du cas d'erreur : Si l'utilisateur rentre une saisie invalide
% dans type, on veut lui signaler
if type ~= "radians" && type ~= "degres"
    % L'appel a error permet de sortir immediatement de la fonction en
    % affichant le texte specifie dans la console, en rouge. Tres utile
    % pour avertir l'utilisateur qu'il ne fait pas ce qui est attendu.
    error(["Argument type must be one of 'radians', 'degres'. Got " type]);
end

% A partir d'ici on est certains que notre type est radians ou degres
if type == "radians"
    % La fonction angle de matlab nous retourne deja l'angle en radians. On
    % peut le voir dans la documentation, en tapant "help angle".
    phase = angle(A);
else
    % Si on arrive ici c'est que l'on voulait des degres, on va donc devoir
    % convertir
    phase = angle(A);

    % Ici on va se servir du fait que Matlab sait multiplier chaque element
    % d'une matrice par un scalaire pour eviter des boucles couteuses
    phase = phase * 180/pi;
end
