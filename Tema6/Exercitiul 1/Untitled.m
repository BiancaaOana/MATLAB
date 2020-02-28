
%Exercitiul 1
clear
clc
close all;
a=linspace(-2*pi +1.e-5, 2*pi - 1.e-5, 100);
x=(1:3);
suma=zeros(3,100);
for i=1:length(x)
    for j=1:i
    suma(i,:)=(-1)^j*a.^(2*j)/factorial(2*j);
    end
end
z=zeros(1,100);
for i=1:length(a)
   z(i)=cos(a(i));
   disp(z(i));
end
figure
hold on
plot(a,z,a,suma);
legend({'cos(x)','n=1','n=2','n=3'},'FontName', 'Arial','FontSize',12,'TextColor','black');
title('Graficul functiei Taylor si functiei cos', 'FontName', 'Arial','FontSize',14);