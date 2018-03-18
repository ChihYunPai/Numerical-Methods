function [s]=Simpson38(func,a,b,n)
    
    h=(b-a)/n;
    x=a:h:b;
    s=(3*h/8)*(func(a)+3*sum(func(x(2):3*h:x(n)))+3*sum(func(x(3):3*h:x(n-1)))+2*sum(func(x(4):3*h:x(n-2)))+func(b)); 