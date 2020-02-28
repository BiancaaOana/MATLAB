function x = LU_sistem(P,Q)
   v=verificare(P,Q);
    if(v==1)
    n=rank(P);
     [L,U]=lufp(P);
      if(det(L)==1)
      Y = MetSubsDesc(L,Q);
      X = MetSubsAsc(U,Y);
      x=X';
      [e,~]=size(X);
      if(n~=e)
          fprintf("Matricea A admite factorizarea LU, dar e instabila si are %i solutii \n",e);
      for i=1:e
          fprintf("x(%-i)=%f \n",i,x(i));
      end
      else
          disp("Matricea A admite factorizarea LU si e si stabila");
          for i=1:n
          fprintf("x(%-i)=%f \n",i,x(i));
          end
      end
     else
         disp("Matricea A nu admite factorizarea LU fara pivotare");
      end
    end
end
% *-Metoda nu functioneaza pentru toate cazurile, de aceea este instabil.
