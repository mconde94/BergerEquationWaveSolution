clc;

clear all;

global d V

V=1;

d=0.01;

xInicio=0;

xFinal=1;

n=100;

tinicial=0;

t=tinicial;

tfinal=1;

deltaT=0.01;

X=linspace(xInicio,xFinal,n);

F=exp(-16*(X-0.5).^2)-exp(-4);

figure(1);

plot(X,F);

xlabel('x (m)');

ylabel('Fi');

str = sprintf('Tempo %f (s)',t);

title(str);

while t<=tfinal
    
    [ F ] = ciclo(F, t,X);
    
    t=t+deltaT;
    
    figure(1);
    
    plot(X,F);
    
    xlabel('x (m)');
    
    ylabel('Fi');
    
    str = sprintf('Tempo %f (s)',t);
    
    title(str);
    
    pause(deltaT*10);
    
end