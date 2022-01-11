clc
clear
close all

%signal sinusoidale partie 1
t=0:0.001:2;
A=4;
x=A*sin(20*pi*t)
figure(1)
plot(t,x),grid;

d=ginput(2)
dmax=num2str(max(x))
dmin=num2str(min(x))