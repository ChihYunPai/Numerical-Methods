function y=hm15_6_2(x)
    
    x_data=[0 1 2 3 4 5]';
    y=0.8+0.1*(x-x_data(3))-0.0294*(x-x_data(3))*(x-x_data(4))+0.0063*(x-x_data(3))*(x-x_data(4))*(x-x_data(5))-0.93;
    end
    