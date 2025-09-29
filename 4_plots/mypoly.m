function [valeur] = mypoly(x)
%MYPOLY evalue le polynome x^3 - 30x + 30 a la valeur de x donnee
p = [1 0 -30 30];
valeur = polyval(p,x);
end

