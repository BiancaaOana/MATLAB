function v = verificare(A,B)
ex = ~isvector(A);
[ma,na]=size(A);
[mb,~]=size(B);
if(ex==1 && ma==mb)
    if(ma==na)
if(det(A) ~= 0)
       v=1;
else 
    disp("Matricea A nu e inversabila"); v=0;
end
    else
        disp("Matricea A nu e compatibila cu matricea B"); v=0;
    end
else
    disp("Matricea A nu e patratica"); v=0;
end
end