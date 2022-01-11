clc
clear 
close all 

%Transformée de Fourier du signal x(t) = exp(-t^2)
syms t w

x=exp(-t^2)

%Méthode 1
X1=fourier(x)
%Méthode 2
X2=fourier(x,w)
%Méthode3
X3= int (x*exp(-j*w*t),t,-inf,inf)

r=X1-X2 % R = 0 donc il n'y a pas de différence entre X1 et X2 

r1=X1-X3 % R = 0 donc il n'y a pas de différence entre X1 et X2


