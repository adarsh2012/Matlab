load brackets
x = [];
for q=1:length(W)
    d = W(q,:);
    t = d(1) - ((   y(  d(1)   )  *   (d(  2  )-d(1)))/(  y(d(2))   -   y(d(1))));
    while abs(y(t))>0.00001
        xx = [y(d(1))*y(t),y(d(2))*y(t)];
        if(xx(1)<0)
            d = [t , d(1)];
        else
            d = [t , d(2)];
        end
        t = d(1) - ((   y(  d(1)   )   *   (   d(2)  -   d(1)   ))/(  y(  d(2)  )   -   y(   d(1)   )  ));
    end
    x = [x;t]
end