%GUITA BIANCA OANA/GRUPA 104

function [Q,R] =  GramSchmMODIF(A)
    [n,p] = size(A);
    
    Q = zeros(n,p);
    R = zeros(p,p);
    
    for j = 1 : p
        Q(:,j) = A(:,j);
        
        for i = 1:j-1
            R(i,j) = Q(:,i)'*Q(:,j);
            Q(:,j) = Q(:,j) - R(i,j)*Q(:,i);
       
        end
        
        R(j,j) = norm(Q(:,j))';
        Q(:,j) = Q(:,j)/R(j,j);
    end
end