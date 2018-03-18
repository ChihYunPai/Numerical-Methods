function [alpha,beta, r2] = linregr3(x,y)
 
% t=[0  5 10 15 20];
% p=[100  200  450  950 2000];
% lnp =[4.6052    5.2983    6.1092    6.8565    7.6009 ];

n = length(x);
%alpha = 4.5841;
%beta = 0.151;
if length(y)~=n, error('x and y must be same length'); end
yt=y;
x = x(:); y = log(y(:)); % convert to column vectors
sx = sum(x); sy = sum(y);
sx2 = sum(x.*x); sxy = sum(x.*y); sy2 = sum(y.*y);
a(1) = (n*sxy-sx*sy)/(n*sx2-sx^2);
a(2) = sy/n-a(1)*sx/n;


%y = yt(:); % convert to column vectors
%sy = sum(yt);


sx = sum(x); sy = sum(y);
sx2 = sum(x.*x); sxy = sum(x.*y); sy2 = sum(y.*y);
a(1) = (n*sxy-sx*sy)/(n*sx2-sx^2);
a(2) = sy/n-a(1)*sx/n;
r2 = ((n*sxy-sx*sy)/sqrt(n*sx2-sx^2)/sqrt(n*sy2-sy^2))^2;

alpha=exp(a(2));
beta=a(1);

%Sr = sum((y-alpha*exp(beta*x)).*(y-alpha*exp(beta*x)))
%St = sum((y-sy/n).*(y-sy/n))
%r2 = ((St-Sr)/St);

p25=alpha*exp(beta*25)
% create plot of data and best fit line
xp = [0:1:20];
yp = alpha*exp(beta*xp);
plot(x,yt,'*',xp,yp,'r')
grid on