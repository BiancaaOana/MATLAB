%Problema 4, laboratorul 7
%Am rulat pt fiecare set de date,
%fisierele de iesire redenumindu-le "date1.out", resp. "date2.out"
A=load('A.in');
B=load('B.in');
[ma,na]=size(A);
[mb,~]=size(B);
if( ma~=mb || ma~=na)
   error("A nu e matrice patratica sau nu e compatibila cu B");
else
A1 = [A B];
n=rank(A);
e=zeros(1,n);
for i=1:n
    e(i)=i;
end
e=e';
for k=1:n-1
    maxi=eps;
for i=k:n
    if (abs(A(e(i),k))>maxi)
        maxi=abs(A(e(i),k));
        i1=i;
    end
end
    aux=e(k);
    e(k)=e(i1);
    e(i1)=aux;
for i=(k+1):n
    m(e(i),k)=A1(e(i),k)/A1(e(k),k);  
    for j=k:n+1
        A1(e(i),j)=A1(e(i),j)-m(e(i),k)*A1(e(k),j);
    end
end
end
sol = MetSubsAsc(A1,n,e);
fileID=fopen('date.out',"w");
fprintf(fileID, "Solutiile sunt: \n");
for i=1:n
fprintf(fileID,"x(%-i)=%f \n",i,sol(i));
end    
end