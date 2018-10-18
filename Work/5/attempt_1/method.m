load brackets.mat
x = [];
for q=1:length(W)
    d = W(q,:);
    t = (d(1)+d(2))/2;
    i = 0;
    while abs(y(t))>0.00001
        xx = [y(d(1))*y(t),y(d(2))*y(t)];
        if(xx(1)<0)
            d = [d(1),t]
        else
            d = [d(2),t]
        end
        t = (d(1)+d(2))/2;
    end
    x = [x;t];
end
 

save valueofx x y