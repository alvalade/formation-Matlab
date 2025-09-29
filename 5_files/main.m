clear; clc; close all;

%% PARAMETRES

A = [1.1 1.2 1.3;
     2.1 2.2 2.3 ;
     3.1 3.2 3.3 ;
     4.1 4.2 4.3];

%% Sauvegarde en .mat (format de Matlab)
save("matrice_A.mat");

% On peut verifier que la sauvegarde a bien eu lieu
% en supprimant la matrice de notre workspace, puis en
% la rechargeant depuis le fichier
clear A
load("matrice_A.mat");



%% sauvegarde au format ASCII

save("A.txt", "A", "-ascii");
% Comme precedemment, toujours verifier que ce que l'on a fait
% fonctionne
clear A
load("A.txt", "-ascii");

%% sauvegarde binaire

% Cette fois on n'a pas le choix que d'utiliser
% les fonctions permettant d'interagir soit meme avec
% les fichiers.
% Plus d'infos: >> help fopen
%               >> help fwrite
%               >> help fread
%               >> help fclose
% Je vous redirige aussi vers votre cours de systemes
% d'exploitations pour plus d'informations sur ce que sont
% les descripteurs de fichiers (utilises par ces fonctions)

% ouvre le fichier en lecture et ecriture
fid = fopen("matrice_A.raw", "w+"); 
% ecrit des double dans le fichier, au format binaire
fwrite(fid, A, "double", 0, "n");                 
% ferme le fichier (/!\ important)
fclose(fid);                                      

% A nouveau, on verifie que ce que l'on a fait fonctionne

% ouvre le fichier en lecture seule
fid = fopen("matrice_A.raw", "r");                
% lit le fichier en binaire et met le fichier dans une matrice 
% de taille size(A)
A_bis = fread(fid, size(A), "double", 0, "n"); 
% ferme le fichier
fclose(fid);
