function [t,n,ea]=hm17_Simpson13
    
es=10^(-6);
xr=60288752;
n=0;

while (1)
  n=n+2;
  t  = Simpson13(@hm17eq,0,10,n);
  ea = abs((xr - t)/xr);
     
  if ea <= es
      break;
  end
  
end