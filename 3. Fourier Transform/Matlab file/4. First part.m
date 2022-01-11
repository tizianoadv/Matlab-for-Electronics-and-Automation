%Exercice 1

%f(t)=t*exp(-3*t)

syms t 
f=t*exp(-3*t)*heaviside(t)

figure(1)
ezplot(t,f),grid %Le "ez" permet d'afficher la courbe sans avoir l'intervalle t

%transformé de Fourier X(w)de f(t)
X1=fourier(f)

% Partie réel de X(w)
Xr1= int(f*cos(w*t),-inf,inf);
Xr2=real(X1);
%Comparaison
e1=Xr1-Xr2;

% Partie imaginaire de X(w)
Xi1= int(f*sin(w*t),-inf,inf);
Xi2=imag(X1);
%Comparaison 
e2=Xi1-Xi2;

figure(2)
w=-20:0.1:20;
subplot (211)
plot(w,Xr1),grid
subplot (212)
plot(w,Xi1),grid

%Spectre d'amplitude :
SA1=sqrt((Xr2^2)+(Xi2^2))
SA2=abs(X1)
%Comparaison
e3=SA1-SA2

%Spectre de phase :
phase=Xi1/Xi2
SP1=atan(phase)
SP2=angle(X1)
e4=SP1-SP2

figure(3)
subplot(211)
ezplot(SA1),grid
subplot(212)
ezplot(SP2),grid

