clear 
close all
%DES 

%Rechercher les pôles 

syms z
x=(z^2+3*z+1)/(z^3+5*z^2+2*z-8);
D=[1 5 2 -8]
r0=roots(D)
%Cacul des coeff
C1=limit((z-r0(1))*x,z,r0(1))
C2=limit((z-r0(2))*x,z,r0(2))
C3=limit((z-r0(3))*x,z,r0(3))

%Recherche des pôles
Den=[1 0 -3 2]
p=roots(Den)

syms z 
x=(z^2-3*z+1)/(z^3-3*z+2);
C1 = limit((z-p(1))*x,z,p(1))
%Pour le pôle multiple p2=1 on a m=2
m=2
f=(z-1)^m*x;
di=diff(f,z,m-1)
fact=1/factorial(m-1)
C2=limit(fact*di,z,1)
%Pour le calcul de C3 
di=diff(f,z,m-2)
fact=1/factorial(m-2)
C3=limit(fact*di,z,1)

%Commande "residuez"
Num=[1 -8 17 2 -24]
Den=[1 1 -2]
[R, P, K]=residuez(Num,Den)

