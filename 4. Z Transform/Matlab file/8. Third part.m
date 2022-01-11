clear 
close all 
%Exercice 3
num=10
den=[1 2 10]
GC=tf(num,den)
te1=1
GC1=c2d(GC,te1,'zoh');
te2=0.5
GC2=c2d(GC,te2,'zoh');
te3=0.1
GC3=c2d(GC,te3,'zoh');

figure(1)
step(GC)
hold on 
step(GC1)
hold on 
step(GC2)
hold on 
step(GC3)

figure(2)
impulse(GC)
hold on 
impulse(GC1)
hold on 
impulse(GC2)
hold on 
impulse(GC3)