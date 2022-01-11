close all 
clear

fe=30;
f0=4;
t=-2:1/fe:2;
t2=-2:(1/fe)*(1/fe):2;
y=f0*sinc(pi*f0*t);
%reconstitution à l'ordre 0 
yr=0;
for n=1:1:length(y)-1
    for m=1:1:(fe)
    yr= [yr,y(n)];
    end
end

subplot(1,2,1);
plot(t,y); grid; title('Echantillonage idéal');
subplot(1,2,2);
plot(t2,yr); grid ;title('Reconstitution ordre 0');