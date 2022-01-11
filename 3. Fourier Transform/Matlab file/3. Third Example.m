clc
clear 
close all 

%Calculer la quantité de l'int de -inf à inf de (abs(x(t)))^2 dt
syms t w
x=exp(-t^2)
E=int((abs(x))^2,t,-inf,inf)
%Résultat
eval(E)