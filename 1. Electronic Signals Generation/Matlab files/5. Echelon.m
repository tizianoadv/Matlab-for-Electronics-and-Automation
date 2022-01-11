clc

clear all;

close all;

%t = -100 : 0.01 : 100

t = -2 : 0.1 : 2

A = 2;


%=======1ERE METHODE GENERATION D'UN ECHELON======

u1 = A*heaviside(t);

figure(1)

plot(t, u1);

% Définition de l'affichage graphique

grid;

% Affichage du titre

title('Impulsion de Dirac');

% Affichage des intitulés des axes

xlabel('temps t')

ylabel('u1(t)');

% Definition des axes

axis([-2 2, -1 3]);

%=======2EME METHODE GENERATION D'UN ECHELON======

u2 = (A/2)*(sign(t)+1);

figure(2)

plot(t, u2);

% Définition de l'affichage graphique

grid;

% Affichage du titre

title('Impulsion de Dirac');

% Affichage des intitulés des axes

xlabel('temps t');

ylabel('u2(t)');

% Definition des axes

axis([-2 2, -1 3]);

%=======3EME METHODE GENERATION D'UN ECHELON======

N = 1+((2-(-2))/0.1); %N=41

%M = (2/0.1)

M = 20;

u4 = [zeros(1,M) A*ones(1,N-M)];

figure(3)

plot(t, u4);

% Définition de l'affichage graphique

grid;

% Affichage du titre

title('Impulsion de Dirac');

% Affichage des intitulés des axes

xlabel('temps t');

ylabel('u4(t)');

% Definition des axes

axis([-2 2, -1 3]);