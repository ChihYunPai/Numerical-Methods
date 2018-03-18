function [a, r2] = linregr2(x,y)
% linregr: linear regression curve fitting
%   [a, r2] = linregr(x,y): Least squares fit of straight
%           line to data by solving the normal equations
% input:
%   x = independent variable
%   y = dependent variable
% output:
%   a = vector of slope, a(1), and intercept, a(2)
%   r2 = coefficient of determination
n = length(x);
if length(y)~=n, error('x and y must be same length'); end
x = x(:); y = y(:); % convert to column vectors
sx = sum(x); sy = sum(y);
sx2 = sum(x.*x); sxy = sum(x.*y); sy2 = sum(y.*y);
a = sxy/sx2;
Sr = sum((y-a*x).*(y-a*x)) ;
St = sum((y-sy/n).*(y-sy/n));
r2 = ((St-Sr)/St);


% create plot of data and best fit line
xp = linspace(min(x),max(x),2);
yp = a*xp;
plot(x,y,'*',xp,yp,'k')
grid on