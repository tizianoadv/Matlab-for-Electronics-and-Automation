clear
close all
%Calcul de la transform�e en Z de x(k)=0.9^k
syms n z
x=(0.9)^n
X=symsum(x*(z^(-n)),n,0,inf)
simplify(X)

%M�thode 2
X1=ztrans(x)
%Transform�e inverse
iztrans(X1)
