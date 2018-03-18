function hm22
    f = @(x) 0.12*x.^3-2.4*x.^2+12*x;
    Ta=40;
    Tb=200;
    hm22eq1  = @(x,T) [ T(2);-(0.12*x.^3-2.4*x.^2+12*x)];
    
    %Shooting_Linear
    z1=10;
    z2=100;
    [x1,T1]  = ode45(hm22eq1,[0 10],[Ta z1]);
    [x2,T2]  = ode45(hm22eq1,[0 10],[Ta z2]);
    Tb1=T1(length(T1),1);
    Tb2=T2(length(T2),1);
    z=z1+(z2-z1)*(Tb-Tb1)/(Tb2-Tb1);
    [xs,Ts]  = ode45(hm22eq1,[0 10],[Ta z]);
    
    %Finite_Difference
    Tf(1)=40;
    Tf(6)=200;
    for j=1:100
        Told=Tf;
        for i=2:5
            Tf(i)=0.5*(Tf(i-1)+Tf(i+1)+4*f(2*(i-1)));
        end
    end
    xp=[0:2:10];
    Shooting_Linear=[xs ;Ts(:,1)']
    Finite_Difference=[xp ;Tf]
    plot(xs,Ts(:,1),xp,Tf,'*')
    legend('T_shooting','T_Finite_Difference')