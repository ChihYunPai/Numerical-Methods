function []=problem_16_13

x=[0, 0.2, 0.4, 0.6, 0.8,1];
y=1./(1.+25*x.^2);
xx=linspace(-1,1);
yy=spline(x,y,xx);
yr=1./(1.+25*xx.^2);
plot(x,y,'r*',xx,yr,'--',xx,yy)
