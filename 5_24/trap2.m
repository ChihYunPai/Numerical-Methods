function [s]=Simpson_one_third(func,a,b,n)

    h=(b-a)/n;
    s=0;
    x=a;
    
    for i=1:n-1
        x=x+h;
        if i/2-floor(i/2)==0
            s=s+2*func(x);
        else 
            s=s+4*func(x);
        end
    end
    
    s=(h/3)*(func(a)+s+func(b));
    