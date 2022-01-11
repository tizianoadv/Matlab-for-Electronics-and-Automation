clear
close all 
clc

%Représentation de f sur [0;5]
t1=-5:0.001:0;
t2=0:0.001:5;
f1=exp(-t1);
f2=exp(-t2);

figure(1)
subplot (211)
plot(t1,f1),grid;
subplot (212)
plot(t2,f2),grid;

% Calcul a0
syms t
f2=exp(-t);
t0=0 
T=5
a0=(1/T)*int(f2,t0,t0+T)

% Calcul bn
syms t n
f=exp(-t);
t0=0 
T=5
w=(2*pi)/T
b0=(2/T)*int(f*cos(n*w*t),t0,t0+T)
