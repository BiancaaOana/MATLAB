
clear
close all
a=linspace(-5,5,10);
z=zeros(1,10);
for i=1:length(a)
  f=a(i);
   if(e>-2 && e<0)
        z(i)=f^2;
   elseif(f>=0 && f<3) 
       z(i)=f^3;
   elseif(f>=3 && f<4)
        z(i)=f^2+18;
   end
end
plot(a,z);
legend('f(x)','FontName','Arial','FontSize',12,'TextColor','black');
title('Graficul functiei f', 'FontName', 'Arial','FontSize',14);