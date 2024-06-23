function out=flowset(x)
    m=x(3);
    q=x(4);
    if m>=26200 || q==1
        out=1;
    else
        out=0;
    end