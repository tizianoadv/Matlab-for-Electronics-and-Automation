clear 
close all 
%Exercice 1
syms n z Y
X=ztrans(heaviside(n),z);
Y1=z^(-1)*Y;
G=Y-Y1-X;
SOL=solve(G,Y);
pretty(SOL);
y=iztrans(SOL,n);

%Représentation
k=0:1:50
y1=subs(y,k)
figure(1)
stem(k,y1),grid;%Correspond à plot mais pour le systeme échantillonés
