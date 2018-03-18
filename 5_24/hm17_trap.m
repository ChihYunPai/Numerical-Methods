function [result,n,ea]=hm17_trap(f,a,b,es)
n=0;
xr=60288752;
    while (1)
  n=n+1;      
  t = trap(f,a,b,n);
  if xr ~= 0, ea = abs((xr - t)/xr) * 100; end
  if ea <= es , break, end
    end
    result=t;
    
end
