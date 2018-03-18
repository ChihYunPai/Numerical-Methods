function y=hm15_6_1(x,x_data,y_data)
    
    [yint,b] = Newtint(x_data,y_data,x);
    y=yint-0.93;
    end
    