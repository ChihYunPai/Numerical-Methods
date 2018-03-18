function problem_16_13_sin_clamp
    
    x=linspace(0,2*pi,8);
    y=(sin(x)).^2;
    xx = linspace(0, 2*pi);
    yy = spline(x, y, xx);
    yr=(sin(xx)).^2;
    
    yc=[0, y, 0];
    yyc=spline(x,yc,xx);
    plot(x,y,'*',xx,yyc,xx,yr,'--')