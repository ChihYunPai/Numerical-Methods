function res=df(cd)
    g=9.81;m=80;t=4;v=36;
   res=-1/2/(g*m/cd)^(1/2)*tanh((g*cd/m)^(1/2)*t)*g*m/cd^2+1/2*(g*m/cd)^(1/2)*(1-tanh((g*cd/m)^(1/2)*t)^2)/(g*cd/m)^(1/2)*t*g/m;
    
    end
 
