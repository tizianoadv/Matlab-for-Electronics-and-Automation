clc
clear 
close all 

%Transform�e de Fourier du signal x(t) = exp(-t^2)
syms t w

x=exp(-t^2)

%M�thode 1
X1=fourier(x)
%M�thode 2
X2=fourier(x,w)
%M�thode3
X3= int (x*exp(-j*w*t),t,-inf,inf)

r=X1-X2 % R = 0 donc il n'y a pas de diff�rence entre X1 et X2 

r1=X1-X3 % R = 0 donc il n'y a pas de diff�rence entre X1 et X2


