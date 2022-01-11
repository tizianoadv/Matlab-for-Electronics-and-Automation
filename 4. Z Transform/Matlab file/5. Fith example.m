clear 
close all 
%Résolution d'équation 
syms n z Y
X=ztrans(0.9^n,z);
Y1=z^(-1)*Y
Y2=z^(-2)*Y
G=Y+0.5*Y1+2*Y2-X;
SOL=solve(G,Y);
pretty(SOL);
y=iztrans(SOL,n);