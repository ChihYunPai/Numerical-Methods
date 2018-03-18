function [x1,x2,ea,iter]=newtraph_nonlinear(eq1,eq2,gu1,gu2,es,maxit)
    
if nargin<4,error('at least 4 input arguments required'),end
if nargin<5|isempty(es),es=0.0001;end
if nargin<6|isempty(maxit),maxit=50;end
iter = 0;


x1new=gu1;
x2new=gu2;

while (1)
x1=x1new;
x2=x2new;

f11=-2*x1+1;
f12=-1;
f21=2*x1-5*x2;
f22=-5*x1-1;

jocob=f11*f22-f12*f21;
eq1=-(x1)^2+x1-x2+0.75;
eq2=(x1)^2-(x2)-5*x1*x2;
x1new=x1-(eq1*f22-eq2*f12)/jocob;
x2new=x2-(eq2*f11-eq1*f21)/jocob;
norm=sqrt((x1)^2+(x2)^2);

  iter = iter + 1;
  if norm ~= 0, ea = sqrt((x1new-x1)^2+(x2new-x2)^2)/norm * 100; end
  if ea <= es | iter >= maxit, break, end

end
x1=x1;
x2=x2;