function [Ans1_exact cd_bd_fd]=hm18
    f=@(x) exp(-2*x)-x;
    d2f=@(x) 4*exp(-2*x);
    
    h=[0.5 0.4 0.3 0.2 0.1];
    
    %the exact value:
    Ans1_exact=d2f(2);
    
    %centeral difference formula:
    cd2f=(-f(2+2*h)+16*f(2+h)-30*f(2)+16*f(2-h)-f(2-2*h))./(12*h.^2);
    et_cd2f=(abs(Ans1_exact-cd2f)./Ans1_exact);
    
    %2nd order backward formula:
    bd2f=(2*f(2)-5*f(2-h)+4*f(2-2*h)-f(2-3*h))./(h.^2);
    et_bd2f=(abs(Ans1_exact-bd2f)./Ans1_exact);
    
    %order forward formula:
    fd2f=(-f(2+3*h)+4*f(2+2*h)-5*f(2+h)+2*f(2))./(h.^2);
    et_fd2f=(abs(Ans1_exact-fd2f)./Ans1_exact);
    
    
    cd_bd_fd=[cd2f' et_cd2f' bd2f' et_bd2f' fd2f' et_fd2f'];
    plot(h,et_cd2f,'r',  h,et_bd2f,'g',  h,et_fd2f,'b');
    