clc
close all 
clear 

% ***************** Impulsion de Dirac de longueur N ******************

t=-10:0.01:20; 
N=3001 %N = ((10-20))/0.01)+1 = 3001
%G�n�ration de l'impulsion unit�
x=[zeros(1,1000) 1 zeros(1,2000)];
%Tracer le signal g�n�r�
figure(1)
plot(t,x),grid;
title('Impulsion unit�');
xlabel('Temps index� en n)');
ylabel('Amplitude');
axis([-10 20,0 1.2]);

% ***************** Impulsion de Dirac de longueur N D�cal� de longueur M ******************

M1=1100;%D�calage de 1100 �chantillons
%Pour un d�calage de 1100 �chantillons par rapport au vecteur x2=[zeros(1,1000) 1 zeros(1,2000)] 
x2=[zeros(1,1000+M1) 1 zeros(1,2000-M1)];
figure(2)
plot(t,x2),grid;
title('impulsion de Dirac');
xlabel('temps(t)');
ylabel('x(t)');
axis([-10 20,0 1.2]);

M2=2000
x3=[zeros(1,1000+M2) 1 zeros(1,2000-M2)];
figure(3)
plot(t,x3),grid;
title('impulsion de Dirac');
xlabel('temps(t)');
ylabel('x(t)');
axis([-10 21,0 1.2]);