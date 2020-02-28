function Y = MetSubsDesc(L,B)
r=rank(L);
Y=B;
for i=2:r
 for j=i:r
     Y(j, :) = Y(j, :) - L(j,i-1) * Y(i-1, :);
end
end