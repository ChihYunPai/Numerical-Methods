function [s]=Simpson13(func,a,b,n)
    h=(b-a)/n;
    x=a:h:b;
    s=h/3*(func(a)+4*sum(func(x(2):2*h:x(n)))+2*sum(func(x(3):2*h:x(n-1)))+func(b));