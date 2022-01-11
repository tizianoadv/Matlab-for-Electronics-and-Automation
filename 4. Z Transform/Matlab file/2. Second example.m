clear 
close all
%Transformée en z de x(k)=a^k
syms n z a
x=a^(n)
X=ztrans(x)
simplify(X)