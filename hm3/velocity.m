function y=velocity(cd)
    t=4;
    v=36;
    g=9.81;
    m=80;
    y=(sqrt(g*m/cd))*tanh(sqrt(g*cd/m)*t)-v;

end