function [r, th]=polar(x,y)
    r=sqrt(x^2+y^2);
if x>0
    if y>=0
        th=atan(y/x)*180/pi;
    else 
        th=360+atan(y/x)*180/pi;
    end
elseif x==0
        if y>0
            th=90;
        elseif y<0
            th=270;
        else th=0;
        end
else
        th=180+atan(y/x)*180/pi;
end

        
        

        