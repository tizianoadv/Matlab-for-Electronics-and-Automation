clc
clear 
close all 
%methode 1
t=-2:0.1:2
A=0.5%coeff 
r=A*t.*heaviside(t)
figure(1)
plot(t,r),grid