clear 
close all 
%Exercice 2
syms n z Y
X=ztrans(0.8^n,z);
X1=z^(-1)*Y
Y1=z^(-1)*Y;
Y2=z^(-2)*Y;
G=Y+1.5*Y1-+0.5-Y2-X-X1;
SOL=solve(G,Y);
pretty(SOL);
y=iztrans(SOL,n);

%Représentation
k=0:1:20
y1=subs(y,k)
figure(1)
stem(k,y1),grid;