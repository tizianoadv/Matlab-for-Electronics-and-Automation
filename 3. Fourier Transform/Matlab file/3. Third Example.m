clc
clear 
close all 

%Calculer la quantit� de l'int de -inf � inf de (abs(x(t)))^2 dt
syms t w
x=exp(-t^2)
E=int((abs(x))^2,t,-inf,inf)
%R�sultat
eval(E)