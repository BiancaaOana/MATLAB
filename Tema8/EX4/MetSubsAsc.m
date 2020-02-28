function z = MetSubsAsc(U,Y)
r=rank(U);
U1=[U Y];
z=zeros(r,1);
i=r;
while(i>0)
    z(i)= U1(i,r+1)/U1(i,i);
    k=i-1;
    while(k>0)
        U1(k,r+1) = U1(k,r+1) - U1(k,i) * z(i);
        k=k-1;
    end
  i=i-1;
end
end