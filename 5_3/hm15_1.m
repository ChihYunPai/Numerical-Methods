function hm15_1
    
    x=[1 2 2.5 3 4 5]';
    y=[0 5 7 6.5 2 0]';
    xx=(0.8:0.1:5.2);
    [yint_1] = Newtint(x(4:5),y(4:5),xx);
    [yint_2] = Newtint(x(4:6),y(4:6),xx);
    [yint_3] = Newtint(x(3:6),y(3:6),xx);
    
    
    
    ans=zeros(3,2);
    
    ans(1,1) = Newtint(x(4:5),y(4:5),3.4);
    ans(2,1) = Newtint(x(4:6),y(4:6),3.4);
    ans(3,1) = Newtint(x(3:6),y(3:6),3.4);
    
    [yint_4] = Lagrange(x(4:5),y(4:5),xx);
    [yint_5] = Lagrange(x(4:6),y(4:6),xx);
    [yint_6] = Lagrange(x(3:6),y(3:6),xx);

    ans(1,2) = Lagrange(x(4:5),y(4:5),3.4);
    ans(2,2) = Lagrange(x(4:6),y(4:6),3.4);
    ans(3,2) = Lagrange(x(3:6),y(3:6),3.4)
    
   plot(x,y,'*',xx,yint_1,'r',xx,yint_2,'g',xx,yint_3,'b',xx,yint_4,'m',xx,yint_5,'y',xx,yint_6,'k')
    %plot(x,y,'*',xx,yint_1,'r',xx,yint_2,'g',xx,yint_3,'b')