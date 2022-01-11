clc
close 
clear all 

%f(t)= 1 si abs(t)<= T/2 et 0 ailleurs, T=4 dans notre cas, donc T/2 = 2 
syms t
T=2
f1= 1*heaviside(t+T) % Retardé de T/2
f2= 1*heaviside(t-T) % Avancé de T/2
f=f1-f2
figure(1)
ezplot(f,[-4,4]),grid

%Transformée de Fourier
syms t w 
X=fourier(f);

figure(2)
ezplot(X),grid;

% T=1
T1=1
f1= 1*heaviside(t+T1) 
f2= 1*heaviside(t-T1)
fa=f1-f2
X1=fourier(fa)



% T=2
T2=2
f1= 1*heaviside(t+T2) 
f2= 1*heaviside(t-T2) 
fb=f1-f2
X2=fourier(fb)

% T=3 
T3=3
f1= 1*heaviside(t+T3) 
f2= 1*heaviside(t-T3) 
fc=f1-f2
X3=fourier(fc)

figure(3)
hold on 
ezplot(fa,[-4,4]),grid
ezplot(fb,[-4,4]),grid
ezplot(fc,[-4,4]),grid

figure(4)
hold on 
ezplot(X1,[-4,4]),grid
ezplot(X2,[-4,4]),grid
ezplot(X3,[-4,4]),grid

%Parceval
P=(1/2*pi)*int(abs(X)^2,-inf,inf)
