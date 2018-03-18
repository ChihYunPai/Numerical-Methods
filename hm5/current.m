function y[A,i1,i2,i3,i4,i5,i6,V2,V3,V4,V5]=current(R1,R2,R3,R41,R42,R5,R6,V1,V6)
    A=[i1 -i2 -i3 0 0 0;i2 0 -i4 -i5 0;0 0 i3 i4 i5 -i6;R1*i1 0 R3*i3 0 0 R6*i6;R1*i1 R2*i2 0 0 R5*i5 R6*i6;R1*i1 R2*i2 0 (R41+R42)*i4 0 R6*i6];
    B=[0;0;0;V1-V6;V1-V6;V1-V6];
    C=A\B;
    i1=C(1,1);
    i2=C(2,1);
    i3=C(3,1);
    i4=C(4,1);
    i5=C(5,1);
    i6=C(6,1);
    V2=V1-R1*i1;
    V3=V2-R2*i2;
    V4=v3-R41*i4;
    V5=V2-R3*i3;
    end
    
    
    