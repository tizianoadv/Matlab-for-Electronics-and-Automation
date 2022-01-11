clear 
close all
clc
%signal sinusoidale partie 2

t1=0:0.001:50;
A1=2.5;
f=0.08
x1=A1*sin(2*pi*f*t1+(pi/2))
figure(2)
plot(t1,x1),grid;

d=ginput(2)
dmax1=num2str(max(x1))
dmin1=num2str(min(x1))