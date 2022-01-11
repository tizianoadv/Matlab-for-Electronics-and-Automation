clear 
close all 
%Echantillonage id�al : y(t) = F0*sin card (pi*Fo*t)
fe1=5;%Fr�quence d'�chantillonage
fe2=10;
fe3=30;
fe4=100;

f0=4;%Fr�quence propre

t1=-2:1/fe1:2;%Vecteurs temps
t2=-2:1/fe2:2;
t3=-2:1/fe3:2;
t4=-2:1/fe4:2;

y1=f0*sinc(pi*f0*t1);
y2=f0*sinc(pi*f0*t2);
y3=f0*sinc(pi*f0*t3);
y4=f0*sinc(pi*f0*t4);

figure(1)
plot(t1,y1,'r'); grid;
hold on 
plot(t2,y2,'g');
hold on 
plot(t3,y3,'b');
hold on
plot(t4,y4,'k');

%Th�or�me de Shanon 
%Te<Tmin/2 avec Tmin, p�riode minimale

legend('5 Hz','10 Hz','30 Hz','100 Hz')
title('Sinus cardinal');

