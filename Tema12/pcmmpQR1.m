%Guita Bianca Oana/GRUPA 104

function X = pcmmpQR1(A,b)

[m,n] = size(A);
K = eye(n);
X = K/A;
[m1,n1] = size(X);
[ma2,~] = size(b);

if(m1 == n && n1 == m && ma2 == n)
    
    [Q,R] = GramSchmMODIF(A);
    E = Q*inv(R);
    X = E*b;
    disp(X);

else
    
    disp('Matricea nu e inversabila la stanga sau compatibila cu b');

end
end