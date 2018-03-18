function [U,L,d,x] = Utest(A,b)
%%%&%%%&%%%&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&%%%&%%%&%%
&%&%&%&%&%&%&%original @2012/4/5 13:35 by B9827115&%&%&%&%&%&%&%
%&%%%&%%%&%%%&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&%%%&%%%&%%%&
%   x = LU Factorization(A,b)  
% input:
%   A = coefficient matrix
%   b = right hand side vector
% output:
%   U = uper triangle matrix        
%   L = lower triangle matrix     
%   d =>L*d=b to find d
%   x = solution vector => U*x=d to find x      
    

[m,n] = size(A);
if m~=n, error('Matrix A must be square'); end

%calculate {U}
U = [A];
for k = 1:n-1
  for i = k+1:n
    factor = U(i,k)/U(k,k);
    U(i,k:n) = U(i,k:n)-factor*U(k,k:n);
  end
end

%calculate {L}
L = zeros(n,n);
Aug=[A];
for k = 1:n-1
  for i = k+1:n
    factor = Aug(i,k)/Aug(k,k);
    Aug(i,k:n) = Aug(i,k:n)-factor*Aug(k,k:n);
    L(i,k)=factor;
    L(i,i)=1;
    L(k,k)=1;
  end
end
A=A
LU=L*U

% forward substitution to find d
d = zeros(n,1);
d(1,1) = b(1,1)/A(1,1);
for i = 2:1:n;
    d(i,1) = (b(i,1)-L(i,1:i-1)*d(1:i-1,1))/L(i,i);
end

% back substitution to find x
x = zeros(n,1);
x(n,1) = d(n,1)/U(n,n);
for i = n-1:-1:1
    x(i,1) = (d(i,1)-U(i,i+1:n)*x(i+1:n))/L(i,i);
end