clear 
close all 
%Echantillonage réel : y(t) = F0*sin card (pi*Fo*t)

te1=0.01;%Période d'échantillonage
f0=2;
t1=-2:te1:2;
y1=f0*sinc(pi*f0*t1);
ye1=0;
for n=1:1:length(y1)-1
    temp=[y1(n),y1(n+1)];
        ye1=[ye1,mean(temp)];
end

te2=1/30;%Période d'échantillonage
f0=2;
t2=-2:te2:2;
y2=f0*sinc(pi*f0*t2);
ye2=0;
for n=1:1:length(y2)-1
    temp=[y2(n),y2(n+1)];
        ye2=[ye2,mean(temp)];
end

te3=1/10;%Période d'échantillonage
f0=2;
t3=-2:te3:2;
y3=f0*sinc(pi*f0*t3);
ye3=0;
for n=1:1:length(y3)-1
    temp=[y3(n),y3(n+1)];
        ye3=[ye3,mean(temp)];
end

te4=0.2;%Période d'échantillonage
f0=2;
t4=-2:te4:2;
y4=f0*sinc(pi*f0*t4);
ye4=0;
for n=1:1:length(y4)-1
    temp=[y4(n),y4(n+1)];
        ye4=[ye4,mean(temp)];
end

plot(t1,ye1,'r');grid;
hold on
plot(t2,ye2,'g');
hold on 
plot(t3,ye3,'b');
hold on 
plot(t4,ye4,'k');

title('Echantillonage reel');
legend('0.01 s','0.033 s','0.1 s','0.2 s');


