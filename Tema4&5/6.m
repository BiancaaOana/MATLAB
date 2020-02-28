%Bianca GUITA/GRUPA 104/TEMA 4&5/EX 6

x=input('x=');
c=0;
suma=0;
sinx = sin(x);
te = ((-1)^c) /factorial(2*c+1) * (x^(2*c+1)); 
while  te >= eps
    suma = suma + ((-1)^c) /factorial(2*c+1) * (x^(2*c+1));    
    te = ((-1)^c) /factorial(2*c+1) * (x^(2*c+1));
    c=c+1;
end

Eroare_abs = abs(sinx - suma);
Eroarerel = Eroare_abs / abs(sinx);
T= table(Eroare_abs,Eroarerel,suma,sinx);
T(1,:)