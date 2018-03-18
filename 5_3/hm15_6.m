function hm15_6
    
    x_data=[0 1 2 3 4 5]';
    y_data=[0 0.5 0.8 0.9 0.941176 0.961538]';
    x_93=sqrt(0.93/(1-0.93))
    xx=(0:0.5:5);
    [yint_1,b1] = Newtint(x_data(4:6),y_data(4:6),xx);
    [yint_2,b2] = Newtint(x_data(3:6),y_data(3:6),xx);
    
    y1=@(x) b1(1,1)+b1(1,2)*(x-x_data(4))+b1(1,3)*(x-x_data(4))*(x-x_data(5))-0.93;
    y2=@(x) b2(1,1)+b2(1,2)*(x-x_data(3))+b2(1,3)*(x-x_data(3))*(x-x_data(4))+b2(1,4)*(x-x_data(3))*(x-x_data(4))*(x-x_data(5))-0.93;
    
    [root_1,fx,ea,iter]=bisect(@hm15_6_1,3,4,0.0001,50,x_data(4:6),y_data(4:6))
    [root_2,fx,ea,iter]=bisect(y2,3,4,0.0001,50)
   
    
    plot(x_data,y_data,'*',x_93,0.93,'*r',root_1,0.93,'*b',root_2,0.93,'*y',xx,yint_1,'r',xx,yint_2,'g')
    
    