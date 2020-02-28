%Guita Bianca Oana / GRUPA 104 -  tema 13
clc, clear 
B=[4.4; 4.5; 4.0; 3.6; 3.9; 3.8; 3.5; 2.5; 1.2; 0.5; -0.2];
X=[-5.0, -3.4, -2.0, -0.8, 0.0, 1.2, 2.5, 4.0, 5.0, 7.0, 8.5];
A=[(X.^2)', X' , ones(11,1)];
[Q, R]=GramSchmMODIF(A);

abc=inv(R)*Q'*B
scatter(X,B);
hold on
f=@(x) abc(1)*x.^2+abc(2)*x+abc(3);
F=f(X);
plot(X,F,'r--' );
xlabel('X');
ylabel('Y');
legend('Puncte','Curba regresie');
title('Curba regresie');
