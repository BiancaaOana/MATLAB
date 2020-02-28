nf = factorial(n);
               t1 = sqrt (2*pi*n);
               t3 = exp(1);
               t2 = (n / t3);
               t4 = t2 ^ n;
               format long
               nf1 = t1 * t4;
               err_abs = abs(nf1 - nf);
               err_rel = err_abs / abs(nf);
     disp ("Fsctorialul "); 
     disp (nf);
     disp ("Factorialul cu Stirling "); 
     disp(nf1);
     disp("Eroarea absoluta");
     disp(err_abs);
     disp("Eroarea relativa");
     disp(err_rel);