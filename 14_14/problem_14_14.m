function []=problem_14_14(x,y)

    
    
    [a_lin] = linregr(x,y)
    y1=a_lin(1)*x+a_lin(2);
    [Sr_lin,Syx_lin,r2_lin] = S(x,y,y1,a_lin)
    
    
    [a_pow] = linregr(log(x),log(y))
    y2=exp(a_pow(2))*x.^(a_pow(1));
    [Sr_pow,Syx_pow,r2_pow] = S(x,y,y2,a_pow)
    
    [a_sat] = linregr(1./x,1./y)
    y3=x./(a_sat(1)/a_sat(2)+x)/a_sat(2);
    [Sr_sat,Syx_sat,r2_sat] = S(x,y,y3,a_sat)
    
    [a_pol] = polyfit(x,y,2)
    y4=a_pol(1)*x.^2+a_pol(2)*x+a_pol(3);
   [Sr_pol,Syx_pol,r2_pol] = S(x,y,y4,a_pol)
    
    
    
    plot(x,y,'*',x,y1,'r',x,y2,'g',x,y3,'b',x,y4,'y')
    
    