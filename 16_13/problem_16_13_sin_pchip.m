function problem_16_13_sin_pchip
    
    x=linspace(0,2*pi,50);
    y=(sin(x)).^2;
    xx = linspace(0, 2*pi);
    yy = interp1(x, y, xx,'pchip');
    yr=(sin(xx)).^2;
    Et=abs(yy-yr);
    plot(x,y,'*',xx,yy,xx,yr,'--',xx,Et,'r*')