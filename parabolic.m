function [x,fx,ea,iter]=parabolic(f,x1,x2,x3,es,maxit,varargin)
% goldmin: minimization golden section search
%   [x,fx,ea,iter]=goldmin(f,xl,xu,es,maxit,p1,p2,...):
%     uses golden section search to find the minimum of f
% input:
%   f = name of function
%   xl, xu = lower and upper guesses
%   es = desired relative error (default = 0.0001%)
%   maxit = maximum allowable iterations (default = 50)
%   p1,p2,... = additional parameters used by f
% output:
%   x = location of minimum
%   fx = minimum function value
%   ea = approximate relative error (%)
%   iter = number of iterations
if nargin<4,error('at least 3 input arguments required'),end
if nargin<5|isempty(es), es=0.0001;end
if nargin<6|isempty(maxit), maxit=50;end

iter=0;
while(1)
    
    xt=x2;
    x4=xt-0.5*((xt-x1)^2*(f(xt)-f(x3))-(xt-x3)^2*(f(xt)-f(x1)))/((xt-x1)*(f(xt)-f(x3))-(xt-x3)*(f(xt)-f(x1)));
  if f(x4)>f(x2)
      if x4 > x2
    x1 = x2;
    x2 = x4;
      else x3 = x2;
           x2 = x4;
      end
      

  else 
      if x4>x2
          x3=x4;
    
      else x1=x4;
      end
      
          
  end
  iter=iter+1;
  if x4~=0, ea = abs((x4-xt)/x4)*100;end
  if ea <= es | iter >= maxit,break,end
end
x=x4;fx=f(x4,varargin{:});