clear
clc
close all

%dérivée de la fonction f(t)=sin(at) par rapport à t
syms a t 
f= sin(a*t)
fd=diff(f)

%dérivée de la fonction f(t)=sin(at) par rapport à a 
syms a t 
f1= sin(a*t)
fd1=diff(f,a)

%symbolique des intégrales f(t) = t^2
syms t 
f2=t^2
%Calcul de l'intégrale de f 
int(f2)

%intégrale de f(t) = t^n
syms t n
f3=t^n
int(f3)

% Calcul de P = 1/T * int (|x(t|^2) dt avec x(t) = t et l'intervale = [-1
% 1 ]
syms t 
x=t
t0=-1 
T=2
P=(1/T)*int(abs(t)^2,t0,t0+T)

%Calcul symbolique des sommes : Somme de n=0 à l'inf de x^n
syms x n 
S=symsum(x^n,n,0,inf)

%Calcul symbolique des sommes : Somme de n=1 à l'inf de 1/n^2
syms n 
S=symsum(1/n^2,1,inf)

