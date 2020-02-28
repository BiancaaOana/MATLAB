% Exemplul 5 facut din curs
clear
close all
n=input('Pozitia balizei:');
format long
h_cilindru=19;
dens_co=25;
rco=dens_co/2;
Dco=46;
Rco=Dco/2;
hcon=14;
hmax=Dco+dens_co;
if(n<=h_cilindru)
    Vtra=pi*(rco^2)*n;
    fprintf("Volumul apei este %d m3",Vtra);
end    
if (n>=hmax)
Vol_con = pi*hcon*(1/3)*(rco^2+Rco^2+rco*Rco);
Vtra = pi*rco^2*h_cilindru;
fprintf("Volumul apei este %d m3",Vtra+Vol_con);
elseif (n>h_cilindru)
     R=Rco-rco;
     n=n-h_cilindru;
     x=rco+(n*R)/hcon;
     Vol_con = pi*hcon*(1/3)*(rco^2+R^2+rco*R);
     Vtra = pi*rco^2*h_cilindru;
     fprintf("Volumul apei este %d m3",Vtra+Vol_con);
end