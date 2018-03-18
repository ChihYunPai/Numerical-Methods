function problem_16_13_4order
    x=[0.2, 0.4, 0.6, 0.8, 1];
    y=1./(1.+25*(x.^2));
    xx=(0:0.01:1);
    [yint,b] = Newtint(x,y,xx);
    yr=1./(1.+25*xx.^2);
    plot(x,y,'*',xx,yr,'--',xx,yint)
    