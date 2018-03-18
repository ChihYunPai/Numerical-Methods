function [v, n]=AdapSimp3(func, a, b, tol, maxseg)
% Goal: integrate func from a to b with tolerance tol
% v: the result.
% n: number of segments.
% a, b: the lower and upper limits
% func: the function to be integrated.
% tol: the tolerance.
% maxseg: maximum number of segments.

n=4;
v0=Simpson13(func, a, b, 2);
v=Simpson13(func, a, (a+b)/2, 2)+Simpson13(func, (a+b)/2, b, 2);
if abs((v-v0)/v)<tol ;
break;

else

[v1, n1]=AdapSimp3(func, a, (a+b)/2, tol, maxseg);
[v2, n2]=AdapSimp3(func, (a+b)/2, b, tol, maxseg);
v=v1+v2;
n=n1+n2;

end