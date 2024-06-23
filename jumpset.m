function out=jumpset(x)
    m=x(3);
    q=x(4);
    if m<=26200 && q==0
        out=1;
    else
        out=0;
    end


    %por mais niveis de separação (massa) de acordocom a realidade
    %confirmar valores
    %tentar fazer debug para arranjat tbm o Pe de acrdo com o thrust
    %videos falcon9 para vr altitud e velocidde e confirmar