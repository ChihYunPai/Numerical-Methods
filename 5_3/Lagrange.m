function yint = Lagrange(x,y,xx)
% Lagrange: Lagrange interpolating polynomial
%   yint = Lagrange(x,y,xx): Uses an (n - 1)-order
%     Lagrange interpolating polynomial based on n data points
%     to determine a value of the dependent variable (yint) at
%     a given value of the independent variable, xx.
% input:
%   x = independent variable
%   y = dependent variable
%   xx = value of independent variable at which the
%        interpolation is calculated
% output:
%   yint = interpolated value of dependent variable
n = length(x);
[xxm xxn]=size(xx);
xt=ones(xxm,xxn);
if length(y)~=n, error('x and y must be same length'); end
s = zeros(xxm,xxn);
for k = xxm:xxn
    
for i = 1:n
  product(k) = y(i);
  for j = 1:n
    if i ~= j
      product(k) = product(k)*(xx(k)-x(j))/(x(i)-x(j));
    end
  end
  s(k) = s(k)+product(k);
end
end
yint = s;