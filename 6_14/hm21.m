function hm21
     g=9.81;
     l=0.6;
     hm21eq1  = @(t,y) [ y(2);-(g/l)*y(1) ];
     hm21eq2  = @(t,y) [ y(2);-(g/l)*sin(y(1)) ];
     
     options=odeset('RelTol',1e-6);
     
     [t1,y1]  = ode45(hm21eq1,[0 10],[pi/8 0],options);
     [t2,y2]  = ode45(hm21eq2,[0 10],[pi/8 0],options);
     [t3,y3]  = ode45(hm21eq1,[0 10],[pi/2 0],options);
     [t4,y4]  = ode45(hm21eq2,[0 10],[pi/2 0],options);
     
     plot(t1,y1(:,1)',t2,y2(:,1)',t3,y3(:,1)',t4,y4(:,1)')
     legend('y1(pi/8,theta)','y2(pi/8,sin)','y3(pi/2,theta)','y4(pi/2,sin)')
     
     max_min_y1_to_y4=[max(y1(:,1)) max(y2(:,1)) max(y3(:,1)) max(y4(:,1));
                       min(y1(:,1)) min(y2(:,1)) min(y3(:,1)) min(y4(:,1));]
    