%GUITA BIANCA OANA/GRUPA 104/EX1 
clc, clear

syms x y z

ec1=5*x+6*y-3*z-10;
ec2=3*x-3*y+2*z-14;
ec3=2*x-4*y-12*z-24;

[X Y Z]=solve(ec1, ec2, ec3, x, y, z);
disp('X='), disp(X)
disp('Y='), disp(Y)
disp('Z='), disp(Z)