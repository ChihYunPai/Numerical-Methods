A=[1 -1 -1 0 0 0;
   0 1 0 -1 -1 0;
   0 0 1 1 1 -1;
   35 0 10 0 0 5;
   35 30 0 0 7 5;
   35 30 0 8 0 5]  
B=[0;0;0;-140;-140;-140]  
S1=A\B
V2=10-35*S1(1,1)
V3=V2-30*S1(2,1)
V4=V3-8*S1(4,1)
V5=V2-10*S1(3,1)

C=[2.2 -1 0 0;1 -2.2 1 0;0 1 -2.2 1;0 0 1 -2.2]
D=[44;-4;-4;-204]
S2=C\D