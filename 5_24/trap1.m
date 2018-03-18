function [s]=trap1(func,a,b,n)
    
    h=(b-a)./n;
    x=a:h:b;
    s=(h/2)*(func(a)+2*sum(hm17eq(x(2):h:x(n)))+func(b));