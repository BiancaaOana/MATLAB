% Laboratorul 11 / Exercitiul 3
clear all; 
clc;
syms x y
M(x) = (x+2)*(x+0.5)*(x-2)*(x-4.5);
disp('M(x)= ')
disp(collect(M))
N(x) = x^6-6.5*x^5-58*x^4+167.5*x^3+728*x^2-890*x-1400;
s = solve(N,x);
disp( 'solutiile polinomului N(x)=x^6-6.5*x^5-58*x^4+167.5*x^3+728*x^2-890*x-1400 sunt: ');
disp(s);
% simplify
P = simplify(4*cos(x)*sin(x)-8*cos(x)^3*sin(x));
disp(' P = ');
disp(P);
Q(x,y) = simplify(1/2*(cos(x-y)+cos(x+y)));
disp(' Q = ');
disp(Q);