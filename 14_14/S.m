function [Sr,Syx,r2] = S(x,y,yn,a)
    n=length(x);
    yba=sum(y)/n;
    Sr=sum( (y-yn).^2 );
    St=sum( (y-yba).^2 );
    r2=(St-Sr)/St;
    Syx=sqrt(Sr/(n-length(a)));
    