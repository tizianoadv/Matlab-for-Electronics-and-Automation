clc
clear 
close all 

%Transform�e de Fourier inverse de X(w) = 1/(1+j*w)
syms t w

X= 1/(1+j*w)
x=ifourier(X,t)
%R�sultat
X=exp(-t)*heaviside(t)