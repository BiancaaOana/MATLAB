function [x_final] = MetSubsAsc(A,n,e)
%varianta fara verificari
x(n)=0;
x=x';
x(n)=A(e(n),n+1)/A(e(n),n);
i=n-1;
while i>0
    x(i)=(A(e(i),n+1)-A(e(i),i+1:n)*x(i+1:n))/(A(e(i),i));
   i=i-1;
end
x_final=x;

end

