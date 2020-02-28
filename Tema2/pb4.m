r=rem(x,y);
           while r~=0
               x=y;
               y=r;
               r=rem(x,y);
           end
           fprintf("CMMDC-ul este: %d \n", y);