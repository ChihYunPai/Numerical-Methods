function [dydt]=dydt(t,y)
    dydt = y*(t^2)-1.1*y;
    end