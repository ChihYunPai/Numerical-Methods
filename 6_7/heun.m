function [t y ea]=heun(dydt, tspan, y0, h, tol, maxiter)
% dyty: the function to compute the derivative.
% tspan=[ti, tf] where ti and tf are the initial and final values of t.
% y0: initial value of y.
% h: step size
% tol: the convergence criteria computed by the approximate relative error.
% maxiter: maximum number of iteration.
% [t y]: t and the computed y.
ti = tspan(1);
tf = tspan(2);
t = (ti:h:tf)';
n = length(t);
y = y0*ones(n,1);
ea=zeros(n,1);

for i=1:n-1;
    iter=0;
    yj=y(i)+dydt(t(i),y(i))*h;
    while(1)
    yj0=yj;
    yj=y(i)+(dydt(t(i),y(i))+dydt(t(i),yj0))*h/2;
    ea(i+1)=(abs(yj-yj0))/yj;
    iter=iter+1;
    if iter>=maxiter | ea(i+1)<=tol, y(i+1)=yj; break,end;
    
    end
end
