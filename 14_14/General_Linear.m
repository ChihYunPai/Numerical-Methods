function [z a Sr r2 syx]=General_Linear(x,y)

z=[exp(-1.5*x) exp(-0.3*x) exp(-0.05*x)];
a=(z'*z)\(z'*y);
Sr=sum((y-z*a).^2);
r2=1-Sr/sum((y-mean(y)).^2);
syx=sqrt(Sr/(length(x)-length(a)));

ynew=z*a
plot(x,y,'*r',x,ynew);
grid on