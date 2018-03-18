function [t,y] = midpoint(dydt,tspan,y0,h,varargin)

if nargin<4,error('at least 4 input arguments required'),end
ti = tspan(1);tf = tspan(2);
if ~(tf>ti),error('upper limit must be greater than lower'),end
tt = (ti:(h/2):tf)';
n = (length(tt)+1)/2;


yy = y0*ones(2*n-1,1);
for i = 1:2:2*n-3;
    yy(i+1)= yy(i) + dydt(tt(i),yy(i),varargin{:})*h/2;
    yy(i+2) = yy(i) + dydt((tt(i+1)),yy(i+1),varargin{:})*h;
end
t = (ti:h:tf)';
y = y0*ones(n,1);
for i = 1:2:2*n-1; 
  y((i+1)/2)=yy(i);
  t((i+1)/2)=tt(i);
end