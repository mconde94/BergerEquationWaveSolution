function [ newF ] = ciclo(oldF, t,X)

global V d

newF=zeros(1,length(oldF));

Y=X-V*t;

h=(Y(length(Y))-Y(1))/(length(Y)-1);

for i=2:length(newF)-1;
    
    newF(i)=oldF(i-1)*(1+(h/d)*(oldF(i-1)-V));
    
end

end

