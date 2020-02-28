function [L1, U] = lufp(A)
s = size(A, 1);
L = eye(s); 
for i = 1:s
    L(i+1:s,i) = A(i+1:s,i) / A(i,i);
    for j=i+1:s
       A(j,:) = A(j,:)-L(j,i)*A(i,:);
    end
end
U = A;
L1=L;
end
