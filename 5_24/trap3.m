function [s]=Simpson38(func,a,b,n)
    
    h=(b-a)/n;
    s=0;
    x=a;
    
    for i=1:n-1
        x=x+h;
        if i/3-floor(i/3)==0
            s=s+2*func(x);
        else 
            s=s+3*func(x);
        end
    end
    
    s=(3*h/8)*(func(a)+s+func(b));
    