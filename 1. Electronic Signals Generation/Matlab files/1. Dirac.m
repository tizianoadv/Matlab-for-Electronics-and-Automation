clc
close all 
clear 

%******************* Methode 1 Impulsion de Dirac Matlab ***********************
t=-5:0.1:5;
A=1
N=5
s=A*not(t);
figure(1)
plot(t,s),grid;

% ***************** Methode 2 Impulsion de Dirac  ******************

t=-0.2:0.0001:0.2;
%On crée le vecteur représentatif de la fonction 
x=zeros(1,2000);
x=[x,1];
x=[x,zeros(1,2000)];
figure(2)
plot(t,x),grid;
title('impulsion de Dirac');
xlabel('temps(t)');
ylabel('x(t)');
axis([-0.05 0.05, -2 2]);