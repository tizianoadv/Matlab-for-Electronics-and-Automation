clc
clear 
close all 

%Transformée de Fourier inverse de X(w) = 1/(1+j*w)
syms t w

X= 1/(1+j*w)
x=ifourier(X,t)
%Résultat
X=exp(-t)*heaviside(t)