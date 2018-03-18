function hm19    
    
    %Analytically:
    y= @(t) exp((t.^3)./3-1.1*t);
    t=[0:.05:2];
    y_analy=y(t)
    
    %Euler¡¦s method with h=0.5 and 0.25:
    [t1, y1]=eulode(@dydt,[0 2],1,0.5);
    [t2, y2]=eulode(@dydt,[0 2],1,0.25);
    et_Euler1=(abs(y(t1)-y1))./y(t1);
    et_Euler2=(abs(y(t2)-y2))./y(t2);
    
    
    %Midpoint method with h=0.5:
    [t3,y3] = midpoint(@dydt,[0 2],1,0.5);
    et_Midpoint=(abs(y(t3)-y3))./y(t3);
    
    
    %Iterative Heun¡¦s method with h=0.5:
    [t4 y4 ea]=heun(@dydt,[0 2], 1, 0.5, 10^-6,50);
    
    %4-th order RK method with h=0.5:
    [tp,yp] = rk4sys(@dydt,[0 2],1,0.5);
    et_4_th_RK=(abs(y(tp)-yp))./y(tp);
    
    
    
    eulode1 = [t1 y1 et_Euler1]
    eulode2 = [t2 y2 et_Euler2]
    Midpoint= [t3 y3 et_Midpoint]
    Heun¡¦s  = [t4 y4 ea]
    RK      = [tp yp et_4_th_RK]
    plot(t,y_analy,t1,y1,t2,y2,t3,y3,t4,y4,tp,yp);
    %subplot(1,2,2,t1,et_Euler1,t2,et_Euler2,t3,et_Midpoint,t4,ea,tp,et_4_th_RK);
    legend('ana','eu1','eu2','mid','heun','RK');
    