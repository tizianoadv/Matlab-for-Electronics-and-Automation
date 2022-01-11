clc
close all 
clear 

% ***************** Impulsion de Dirac de longueur N ******************

t=-0.2:0.0001:0.2; %N = ((0.2-(-0.2))/0.0001)+1 = 4001
N=4001
%On crée le vecteur représentatif de la fonction 
x=[1 ,zeros(1,N-1)];
figure(1)
plot(t,x),grid;
title('impulsion de Dirac');
xlabel('temps(t)');
ylabel('x(t)');

% ***************** Impulsion de Dirac de longueur N Décalé de longueur M ******************

%On crée le vecteur représentatif de la fonction 
M=2000;
x=[zeros(1,M) 1 zeros(1,(N-1)-M)];
figure(2)
plot(t,x),grid;
title('impulsion de Dirac');
xlabel('temps(t)');
ylabel('x(t)');