AB=8;
BC=5*sqrt(2);
CD=5*sqrt(2);
AD=6;
BAD=90;
BD=sqrt(AB^2+AD^2)
ADC=acosd((BD^2+CD^2-BC*2)/(2*BD*CD))+acosd((AD^2+BD^2-AB^2)/(2*AD*BD));
AC=sqrt(AD^2+CD^2-2*AD*CD*cosd(ADC))
disp(BAD)
disp(ADC)
ABC=90-acosd((AD^2+BD^2-AB^2)/(2*AD*BD))+acosd((BD^2+CD^2-BC*2)/(2*BD*CD))
BCD=180-2*acosd((BD^2+CD^2-BC*2)/(2*BD*CD))
if(abs(BAD+ADC+ABC+BCD-2*180)<eps)
    disp("E convex")
else disp("Nu e conv")
end
SABD=(AD*AB)/2;
SBCD=(BC*CD*sind(BCD))/2;
p=AB+BC+CD+AD;
if(abs(BAD+BCD-180)<eps)
    R=sqrt((AB*BC+CD*AD)*(AB*CD+BC*AD)*(AB*AD+BC*CD))/(SABD+SBDC)
else disp("Nu e inscriptibil")
end
if(abs(AB+CD-AD-BC)<eps)
    r=(SABD+SBCD)/(p/2)
else disp("Nu admite cerc inscris")
end
PERIMETRU=p
ARIA=SABD+SBCD
