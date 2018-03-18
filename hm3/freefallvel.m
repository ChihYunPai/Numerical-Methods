function v=freefallvel(t,m,cd)
    %bungee velocity with second-order frag
    %v=freefallvel(t, m, cd) computes the free-fall
    %velocity of an object with second-order frag
    %input:
    %t=time (s)
    %m=mass (kg)
    %cd=second-order drag coefficient (kg/m)
    %output:
    %v=downward velocity (m/s)
  
    g=9.81;
    v=sqrt(g*m/cd)*tanh(sqrt(g*cd/m)*t);
    end
    